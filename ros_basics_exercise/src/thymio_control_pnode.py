#!/usr/bin/env python3

import rospy
import math
from ros_basics_msgs.srv import CurrentWaypoint
from ros_basics_msgs.srv import CheckWaypointReached
from ros_basics_msgs.msg import SimplePoseStamped
from ros_basics_msgs.msg import SimpleVelocities
from ros_basics_msgs.msg import ProximitySensors
from sensor_msgs.msg import LaserScan
import numpy as np
from time import sleep

Kp_v = 0.3
Kp_w = 3
Ki_v = 0.03
Ki_w = 0.03
Kd_v = 0.01
Kd_w = 0.01
dt = 0.1 #10 Hz is dt=0.1 s 

pose_msg = SimplePoseStamped()
curr_pose = None
val_irs = None
detect_obstacle = False

def get_pose(_data):
    global curr_pose
    global pose_msg
    pose_msg = _data
    curr_pose = _data.pose

def get_sensor(msg):
    global val_irs
    # sensor = msg.header.frame_id
    # val = msg.ranges[0]
    raw_val = msg.values
    #print(raw_val)
    val_irs = np.array(raw_val)

    simulation = True
    if simulation:
        max_val = 4500
        for i in range(len(val_irs)):
            if math.isinf(val_irs[i]):
                val_irs[i] = 0
            else:
                # print(val_irs)
                val_irs[i] = ((0.1 - val_irs[i]) / 0.1) * max_val
                val_irs[i] = int(val_irs[i])

    print(val_irs)
    simple_obstacle_avoid(val_irs)

def simple_obstacle_avoid(val_irs):
    global detect_obstacle
    # Process sensor data here.     
    obstacleRight = val_irs[3]+val_irs[4] 
    obstacleLeft = val_irs[0]+val_irs[1] 
    obstacleBack = val_irs[5] + val_irs[6]
    obstacleCenter = val_irs[2]

    v = 0.08
    w  = 1
    #thresh = 2500
    thresh = 2000
    # Enter here functions to send actuator commands:
    if obstacleRight > thresh and obstacleLeft < thresh:
        set_velocity(0, w)
        detect_obstacle = True
    elif obstacleRight < thresh and obstacleLeft > thresh:
        set_velocity(0, -w)
        detect_obstacle = True
    elif obstacleRight > thresh and obstacleLeft > thresh:
        set_velocity(-v, 0)
        detect_obstacle = True
    elif obstacleBack > 5000:
        set_velocity(v, 0)
        detect_obstacle = True
    # elif obstacleCenter > 1500:
    #     set_velocity(0, w)
    #     detect_obstacle = True
    else:
        detect_obstacle = False

    if detect_obstacle:
        sleep(0.08)

def set_velocity(v,w):
    nVel = SimpleVelocities(v,w)
    pub.publish(nVel)

def spin():
    global err_distance_prev
    global err_angle_prev
    global err_distance_sum
    global err_angle_sum

    # 1) call the corresponding service to check if the waypoint was reached
    try:
        get_waypt_reached = rospy.ServiceProxy('check_waypoint_reached', CheckWaypointReached)
        waypt_reached = get_waypt_reached(pose_msg, False)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
        
    if waypt_reached.reached:
        err_distance_prev = 0
        err_angle_prev = 0
        err_distance_sum = 0
        err_angle_sum = 0
        set_velocity(0,0)

    # 3) call the corresponding service to get the current waypoint or waypoint list
    try:
        get_curr_waypt = rospy.ServiceProxy('current_waypoint', CurrentWaypoint)
        curr_waypt = get_curr_waypt()
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
        
    # 4) implement your PID/PD/P logic
    if not curr_waypt.is_empty:
        #Compute target
        target = curr_waypt.goal
        target_angle = math.atan2(target.y-curr_pose.xyz.y, target.x-curr_pose.xyz.x) #this will be in ]-pi;pi]
        
        #Compute error
        err_distance = math.sqrt(((target.x - curr_pose.xyz.x)**2) + ((target.y - curr_pose.xyz.y)**2)) 
        err_angle = target_angle - curr_pose.rpy.yaw #this is now in ]-2pi;2pi[

        #Normalize error angle to ]-pi;pi]
        err_angle = (err_angle + 2*math.pi) % (2*math.pi)
        if (err_angle > math.pi):
            err_angle -= 2*math.pi 

        #Differential term
        err_distance_diff = (err_distance - err_distance_prev) / dt
        err_angle_diff = (err_angle - err_angle_prev) / dt

        #Integral term
        err_distance_sum = err_distance_sum + err_distance * dt
        err_angle_sum = err_angle_sum + err_angle * dt

        # detect_obstacle = False
        if detect_obstacle is False:
            #Set control input
            v = Kp_v * err_distance + Kd_v * err_distance_diff + Ki_v * err_distance_sum
            w = Kp_w * err_angle + Kd_w * err_angle_diff + Ki_w * err_angle_sum

            set_velocity(v,w)

        #Storing previous error
        err_distance_prev = err_distance
        err_angle_prev = err_angle

    else:
        err_distance_prev = 0
        err_angle_prev = 0
        err_distance_sum = 0
        err_angle_sum = 0
        set_velocity(0,0)

    pass

if __name__ == '__main__':
    rospy.init_node('thymio_control_pnode', anonymous=True)
    loop_rate = rospy.Rate(10)

    rospy.wait_for_service('check_waypoint_reached')
    rospy.wait_for_service('current_waypoint')
    rospy.Subscriber('robot_pose', SimplePoseStamped, get_pose)
    rospy.Subscriber('proximity_sensors', ProximitySensors, get_sensor)
    pub = rospy.Publisher('set_velocities', SimpleVelocities)

    while not rospy.is_shutdown():
        spin()        