;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::SimplePoseStamped)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'SimplePoseStamped (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::SIMPLEPOSESTAMPED")
  (make-package "ROS_BASICS_MSGS::SIMPLEPOSESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude SimplePoseStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_basics_msgs::SimplePoseStamped
  :super ros::object
  :slots (_header _pose ))

(defmethod ros_basics_msgs::SimplePoseStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance ros_basics_msgs::SimplePose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_basics_msgs/SimplePose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_basics_msgs/SimplePose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_basics_msgs/SimplePose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get ros_basics_msgs::SimplePoseStamped :md5sum-) "9b32f339a300d57b131bcc5fa4fb7c1d")
(setf (get ros_basics_msgs::SimplePoseStamped :datatype-) "ros_basics_msgs/SimplePoseStamped")
(setf (get ros_basics_msgs::SimplePoseStamped :definition-)
      "Header header
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
float64 yaw
")



(provide :ros_basics_msgs/SimplePoseStamped "9b32f339a300d57b131bcc5fa4fb7c1d")


