;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::CurrentWaypoint)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'CurrentWaypoint (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::CURRENTWAYPOINT")
  (make-package "ROS_BASICS_MSGS::CURRENTWAYPOINT"))
(unless (find-package "ROS_BASICS_MSGS::CURRENTWAYPOINTREQUEST")
  (make-package "ROS_BASICS_MSGS::CURRENTWAYPOINTREQUEST"))
(unless (find-package "ROS_BASICS_MSGS::CURRENTWAYPOINTRESPONSE")
  (make-package "ROS_BASICS_MSGS::CURRENTWAYPOINTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_basics_msgs::CurrentWaypointRequest
  :super ros::object
  :slots ())

(defmethod ros_basics_msgs::CurrentWaypointRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_basics_msgs::CurrentWaypointResponse
  :super ros::object
  :slots (_goal _is_empty ))

(defmethod ros_basics_msgs::CurrentWaypointResponse
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Pose2D :init))
    ((:is_empty __is_empty) nil)
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _is_empty __is_empty)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:is_empty
   (&optional (__is_empty :null))
   (if (not (eq __is_empty :null)) (setq _is_empty __is_empty)) _is_empty)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _goal
    (send _goal :serialization-length)
    ;; bool _is_empty
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _goal
       (send _goal :serialize s)
     ;; bool _is_empty
       (if _is_empty (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; bool _is_empty
     (setq _is_empty (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_basics_msgs::CurrentWaypoint
  :super ros::object
  :slots ())

(setf (get ros_basics_msgs::CurrentWaypoint :md5sum-) "509ad6487577c30d7a7462175b53403c")
(setf (get ros_basics_msgs::CurrentWaypoint :datatype-) "ros_basics_msgs/CurrentWaypoint")
(setf (get ros_basics_msgs::CurrentWaypoint :request) ros_basics_msgs::CurrentWaypointRequest)
(setf (get ros_basics_msgs::CurrentWaypoint :response) ros_basics_msgs::CurrentWaypointResponse)

(defmethod ros_basics_msgs::CurrentWaypointRequest
  (:response () (instance ros_basics_msgs::CurrentWaypointResponse :init)))

(setf (get ros_basics_msgs::CurrentWaypointRequest :md5sum-) "509ad6487577c30d7a7462175b53403c")
(setf (get ros_basics_msgs::CurrentWaypointRequest :datatype-) "ros_basics_msgs/CurrentWaypointRequest")
(setf (get ros_basics_msgs::CurrentWaypointRequest :definition-)
      "---
geometry_msgs/Pose2D goal
bool is_empty 

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")

(setf (get ros_basics_msgs::CurrentWaypointResponse :md5sum-) "509ad6487577c30d7a7462175b53403c")
(setf (get ros_basics_msgs::CurrentWaypointResponse :datatype-) "ros_basics_msgs/CurrentWaypointResponse")
(setf (get ros_basics_msgs::CurrentWaypointResponse :definition-)
      "---
geometry_msgs/Pose2D goal
bool is_empty 

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :ros_basics_msgs/CurrentWaypoint "509ad6487577c30d7a7462175b53403c")


