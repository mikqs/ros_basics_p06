;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::CheckWaypointReached)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'CheckWaypointReached (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::CHECKWAYPOINTREACHED")
  (make-package "ROS_BASICS_MSGS::CHECKWAYPOINTREACHED"))
(unless (find-package "ROS_BASICS_MSGS::CHECKWAYPOINTREACHEDREQUEST")
  (make-package "ROS_BASICS_MSGS::CHECKWAYPOINTREACHEDREQUEST"))
(unless (find-package "ROS_BASICS_MSGS::CHECKWAYPOINTREACHEDRESPONSE")
  (make-package "ROS_BASICS_MSGS::CHECKWAYPOINTREACHEDRESPONSE"))

(in-package "ROS")





(defclass ros_basics_msgs::CheckWaypointReachedRequest
  :super ros::object
  :slots (_pose _verbose ))

(defmethod ros_basics_msgs::CheckWaypointReachedRequest
  (:init
   (&key
    ((:pose __pose) (instance ros_basics_msgs::SimplePoseStamped :init))
    ((:verbose __verbose) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _verbose __verbose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:verbose
   (&optional (__verbose :null))
   (if (not (eq __verbose :null)) (setq _verbose __verbose)) _verbose)
  (:serialization-length
   ()
   (+
    ;; ros_basics_msgs/SimplePoseStamped _pose
    (send _pose :serialization-length)
    ;; bool _verbose
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_basics_msgs/SimplePoseStamped _pose
       (send _pose :serialize s)
     ;; bool _verbose
       (if _verbose (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_basics_msgs/SimplePoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _verbose
     (setq _verbose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_basics_msgs::CheckWaypointReachedResponse
  :super ros::object
  :slots (_reached ))

(defmethod ros_basics_msgs::CheckWaypointReachedResponse
  (:init
   (&key
    ((:reached __reached) nil)
    )
   (send-super :init)
   (setq _reached __reached)
   self)
  (:reached
   (&optional (__reached :null))
   (if (not (eq __reached :null)) (setq _reached __reached)) _reached)
  (:serialization-length
   ()
   (+
    ;; bool _reached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reached
       (if _reached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reached
     (setq _reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_basics_msgs::CheckWaypointReached
  :super ros::object
  :slots ())

(setf (get ros_basics_msgs::CheckWaypointReached :md5sum-) "04f34cae25ac370b7cb9f4cd6bf31ca3")
(setf (get ros_basics_msgs::CheckWaypointReached :datatype-) "ros_basics_msgs/CheckWaypointReached")
(setf (get ros_basics_msgs::CheckWaypointReached :request) ros_basics_msgs::CheckWaypointReachedRequest)
(setf (get ros_basics_msgs::CheckWaypointReached :response) ros_basics_msgs::CheckWaypointReachedResponse)

(defmethod ros_basics_msgs::CheckWaypointReachedRequest
  (:response () (instance ros_basics_msgs::CheckWaypointReachedResponse :init)))

(setf (get ros_basics_msgs::CheckWaypointReachedRequest :md5sum-) "04f34cae25ac370b7cb9f4cd6bf31ca3")
(setf (get ros_basics_msgs::CheckWaypointReachedRequest :datatype-) "ros_basics_msgs/CheckWaypointReachedRequest")
(setf (get ros_basics_msgs::CheckWaypointReachedRequest :definition-)
      "SimplePoseStamped pose
bool verbose

================================================================================
MSG: ros_basics_msgs/SimplePoseStamped
Header header
ros_basics_msgs/SimplePose pose
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_basics_msgs/SimplePose
geometry_msgs/Point xyz
ros_basics_msgs/RPY rpy
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: ros_basics_msgs/RPY
float64 roll
float64 pitch
---
bool reached
")

(setf (get ros_basics_msgs::CheckWaypointReachedResponse :md5sum-) "04f34cae25ac370b7cb9f4cd6bf31ca3")
(setf (get ros_basics_msgs::CheckWaypointReachedResponse :datatype-) "ros_basics_msgs/CheckWaypointReachedResponse")
(setf (get ros_basics_msgs::CheckWaypointReachedResponse :definition-)
      "SimplePoseStamped pose
bool verbose

================================================================================
MSG: ros_basics_msgs/SimplePoseStamped
Header header
ros_basics_msgs/SimplePose pose
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_basics_msgs/SimplePose
geometry_msgs/Point xyz
ros_basics_msgs/RPY rpy
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: ros_basics_msgs/RPY
float64 roll
float64 pitch
---
bool reached
")



(provide :ros_basics_msgs/CheckWaypointReached "04f34cae25ac370b7cb9f4cd6bf31ca3")


