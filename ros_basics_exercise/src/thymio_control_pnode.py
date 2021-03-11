#!/usr/bin/env python3


import rospy
from ros_basics_msgs.srv import CurrentWaypoint
from ros_basics_msgs.srv import CheckWaypointReached
from ros_basics_msgs.msg import SimplePoseStamped
from geometry_msgs.msg import Twist


def spin():
    # 1) call the corresponding service to check if the waypoint was reached
    
    try:
        get_waypt_reached = rospy.ServiceProxy('check_waypoint_reached', CheckWaypointReached)
        waypt_reached = get_waypt_reached()
        print(waypt_reached)
        print(waypt_reached.reached)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

    # 2) subscribe to the robot_pose topic to get the robot's current pose
    
    rospy.Subscriber('robot_pose', SimplePoseStamped)
    print(_data.data)

    # 3) call the corresponding service to get the current waypoint or waypoint list
    try:
        get_cur_waypt = rospy.ServiceProxy('current_waypoint', CurrentWaypoint)
        resp = get_cur_waypt()
        print(resp)
        print(type(resp))
        print(resp.goal)
        print(resp.goal.x, resp.goal.y)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    
    # 4) implement your PID/PD/P logic

    # 5) publish your computed velocities in the set_velocities topic
    # 6) if there are no waypoints left then set the velocities to 0 and wait for the next waypoint

    # if you are using C++ then leave this function call empty !
    pass

def move():
    velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()

    distance = 10
    speed_x = 0.1
    speed_y = 0
    angular = 0
    vel_msg.linear.x = speed_x
    vel_msg.linear.y = speed_y
    vel_msg.angular.z = angular_z

    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    #Setting the current time for distance calculus
    t0 = rospy.Time.now().to_sec()
    current_distance = 0

    #Loop to move the turtle in an specified distance
    while(current_distance < distance):
        #Publish the velocity
        velocity_publisher.publish(vel_msg)
        #Takes actual time to velocity calculus
        t1=rospy.Time.now().to_sec()
        #Calculates distancePoseStamped
        current_distance= speed_x*(t1-t0)
        #After the loop, stops the robot
        vel_msg.linear.x = 0
        #Force the robot to stop
        velocity_publisher.publish(vel_msg)


if __name__ == '__main__':
    rospy.init_node('thymio_control_pnode', anonymous=True)
    loop_rate = rospy.Rate(10)
    print("TEST1")
    rospy.wait_for_service('check_waypoint_reached')
    print("TEST2")
    rospy.wait_for_service('current_waypoint')
    print("TEST3")
    while not rospy.is_shutdown():
        spin()        
        print("TEST6")
        move()
        print("TEST7")

