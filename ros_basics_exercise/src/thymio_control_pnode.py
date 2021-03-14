#!/usr/bin/env python3

import rospy
import math
from ros_basics_msgs.srv import CurrentWaypoint
from ros_basics_msgs.srv import CheckWaypointReached
from ros_basics_msgs.msg import SimplePoseStamped
from ros_basics_msgs.msg import SimpleVelocities

Kp_v = 1.2
Kp_w = 2.5
Ki_v = 0.05
Ki_w = 0.05
Kd_v = 0.06
Kd_w = 0.06
dt = 0.1 #10 Hz is dt=0.1 s 

pose_msg = SimplePoseStamped()
curr_pose = None

def get_pose(_data):
    global curr_pose
    global pose_msg
    pose_msg = _data
    curr_pose = _data.pose

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

    rospy.Subscriber('robot_pose', SimplePoseStamped, get_pose)
    rospy.wait_for_service('check_waypoint_reached')
    rospy.wait_for_service('current_waypoint')
    pub = rospy.Publisher('set_velocities', SimpleVelocities)

    while not rospy.is_shutdown():
        spin()        




