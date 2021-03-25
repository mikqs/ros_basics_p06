;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::AddWaypoint)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'AddWaypoint (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::ADDWAYPOINT")
  (make-package "ROS_BASICS_MSGS::ADDWAYPOINT"))
(unless (find-package "ROS_BASICS_MSGS::ADDWAYPOINTREQUEST")
  (make-package "ROS_BASICS_MSGS::ADDWAYPOINTREQUEST"))
(unless (find-package "ROS_BASICS_MSGS::ADDWAYPOINTRESPONSE")
  (make-package "ROS_BASICS_MSGS::ADDWAYPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ros_basics_msgs::AddWaypointRequest
  :super ros::object
  :slots (_goal ))

(defmethod ros_basics_msgs::AddWaypointRequest
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass ros_basics_msgs::AddWaypointResponse
  :super ros::object
  :slots ())

(defmethod ros_basics_msgs::AddWaypointResponse
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

(defclass ros_basics_msgs::AddWaypoint
  :super ros::object
  :slots ())

(setf (get ros_basics_msgs::AddWaypoint :md5sum-) "d74cb68b87f4de16729735cf85932163")
(setf (get ros_basics_msgs::AddWaypoint :datatype-) "ros_basics_msgs/AddWaypoint")
(setf (get ros_basics_msgs::AddWaypoint :request) ros_basics_msgs::AddWaypointRequest)
(setf (get ros_basics_msgs::AddWaypoint :response) ros_basics_msgs::AddWaypointResponse)

(defmethod ros_basics_msgs::AddWaypointRequest
  (:response () (instance ros_basics_msgs::AddWaypointResponse :init)))

(setf (get ros_basics_msgs::AddWaypointRequest :md5sum-) "d74cb68b87f4de16729735cf85932163")
(setf (get ros_basics_msgs::AddWaypointRequest :datatype-) "ros_basics_msgs/AddWaypointRequest")
(setf (get ros_basics_msgs::AddWaypointRequest :definition-)
      "geometry_msgs/Pose2D goal

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
---
")

(setf (get ros_basics_msgs::AddWaypointResponse :md5sum-) "d74cb68b87f4de16729735cf85932163")
(setf (get ros_basics_msgs::AddWaypointResponse :datatype-) "ros_basics_msgs/AddWaypointResponse")
(setf (get ros_basics_msgs::AddWaypointResponse :definition-)
      "geometry_msgs/Pose2D goal

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
---
")



(provide :ros_basics_msgs/AddWaypoint "d74cb68b87f4de16729735cf85932163")


