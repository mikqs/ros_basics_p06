;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::SetWaypoints)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'SetWaypoints (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::SETWAYPOINTS")
  (make-package "ROS_BASICS_MSGS::SETWAYPOINTS"))
(unless (find-package "ROS_BASICS_MSGS::SETWAYPOINTSREQUEST")
  (make-package "ROS_BASICS_MSGS::SETWAYPOINTSREQUEST"))
(unless (find-package "ROS_BASICS_MSGS::SETWAYPOINTSRESPONSE")
  (make-package "ROS_BASICS_MSGS::SETWAYPOINTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ros_basics_msgs::SetWaypointsRequest
  :super ros::object
  :slots (_waypoints ))

(defmethod ros_basics_msgs::SetWaypointsRequest
  (:init
   (&key
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_basics_msgs::SetWaypointsResponse
  :super ros::object
  :slots ())

(defmethod ros_basics_msgs::SetWaypointsResponse
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

(defclass ros_basics_msgs::SetWaypoints
  :super ros::object
  :slots ())

(setf (get ros_basics_msgs::SetWaypoints :md5sum-) "0b9e83915d91f5a57f9839688cdeccfb")
(setf (get ros_basics_msgs::SetWaypoints :datatype-) "ros_basics_msgs/SetWaypoints")
(setf (get ros_basics_msgs::SetWaypoints :request) ros_basics_msgs::SetWaypointsRequest)
(setf (get ros_basics_msgs::SetWaypoints :response) ros_basics_msgs::SetWaypointsResponse)

(defmethod ros_basics_msgs::SetWaypointsRequest
  (:response () (instance ros_basics_msgs::SetWaypointsResponse :init)))

(setf (get ros_basics_msgs::SetWaypointsRequest :md5sum-) "0b9e83915d91f5a57f9839688cdeccfb")
(setf (get ros_basics_msgs::SetWaypointsRequest :datatype-) "ros_basics_msgs/SetWaypointsRequest")
(setf (get ros_basics_msgs::SetWaypointsRequest :definition-)
      "geometry_msgs/Pose2D[] waypoints

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

(setf (get ros_basics_msgs::SetWaypointsResponse :md5sum-) "0b9e83915d91f5a57f9839688cdeccfb")
(setf (get ros_basics_msgs::SetWaypointsResponse :datatype-) "ros_basics_msgs/SetWaypointsResponse")
(setf (get ros_basics_msgs::SetWaypointsResponse :definition-)
      "geometry_msgs/Pose2D[] waypoints

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



(provide :ros_basics_msgs/SetWaypoints "0b9e83915d91f5a57f9839688cdeccfb")


