#!/usr/bin/env python3


import rospy
import math
from ros_basics_msgs.srv import CurrentWaypoint
from ros_basics_msgs.srv import CheckWaypointReached
from ros_basics_msgs.msg import SimplePoseStamped
from ros_basics_msgs.msg import SimpleVelocities

Kp_v = 0.5
Kp_w = 1

def get_pose(_data):
    global curr_pose
    #rospy.loginfo(_data.pose)
    curr_pose = _data.pose

def set_velocity(v,w):
    pub = rospy.Publisher('set_velocities', SimpleVelocities)
    nVel = SimpleVelocities(v,w)
    pub.publish(nVel)

def spin():
    # 1) call the corresponding service to check if the waypoint was reached
    try:
        get_waypt_reached = rospy.ServiceProxy('check_waypoint_reached', CheckWaypointReached)
        waypt_reached = get_waypt_reached()
        print(waypt_reached)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

    # 2) subscribe to the robot_pose topic to get the robot's current pose
    rospy.Subscriber('robot_pose', SimplePoseStamped, get_pose)

    # 3) call the corresponding service to get the current waypoint or waypoint list
    try:
        get_curr_waypt = rospy.ServiceProxy('current_waypoint', CurrentWaypoint)
        curr_waypt = get_curr_waypt()
        print(curr_waypt)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
        

    # 4) implement your PID/PD/P logic

    #def pid_controller(train, g, K_P, K_I, K_D):
    if not curr_waypt.is_empty:
        target = curr_waypt.goal
        target_angle = math.atan2(target.y-curr_pose.xyz.y, target.x-curr_pose.xyz.x)
        
        err_distance = math.sqrt(((target.x - curr_pose.xyz.x)**2) + ((target.y - curr_pose.xyz.y)**2))
        err_angle = target_angle - curr_pose.rpy.yaw 

        if abs(err_angle) > math.pi:
            err_angle = (err_angle + 2*math.pi) % (2*math.pi)

        v = Kp_v * err_distance
        w = Kp_w * err_angle

        set_velocity(v,w)
        
        #err_distance_prev = err_distance
        #err_angle_prev = err_angle

    else:
        set_velocity(0,0)

    # 5) publish your computed velocities in the set_velocities topic

    # 6) if there are no waypoints left then set the velocities to 0 and wait for the next waypoint

    # if you are using C++ then leave this function call empty !
    pass

if __name__ == '__main__':
    rospy.init_node('thymio_control_pnode', anonymous=True)
    loop_rate = rospy.Rate(10)

    rospy.wait_for_service('check_waypoint_reached')
    rospy.wait_for_service('current_waypoint')

    while not rospy.is_shutdown():
        spin()        




