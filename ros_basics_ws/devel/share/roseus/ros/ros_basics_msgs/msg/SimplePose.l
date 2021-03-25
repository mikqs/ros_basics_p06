;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::SimplePose)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'SimplePose (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::SIMPLEPOSE")
  (make-package "ROS_BASICS_MSGS::SIMPLEPOSE"))

(in-package "ROS")
;;//! \htmlinclude SimplePose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_basics_msgs::SimplePose
  :super ros::object
  :slots (_xyz _rpy ))

(defmethod ros_basics_msgs::SimplePose
  (:init
   (&key
    ((:xyz __xyz) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance ros_basics_msgs::RPY :init))
    )
   (send-super :init)
   (setq _xyz __xyz)
   (setq _rpy __rpy)
   self)
  (:xyz
   (&rest __xyz)
   (if (keywordp (car __xyz))
       (send* _xyz __xyz)
     (progn
       (if __xyz (setq _xyz (car __xyz)))
       _xyz)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _xyz
    (send _xyz :serialization-length)
    ;; ros_basics_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _xyz
       (send _xyz :serialize s)
     ;; ros_basics_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _xyz
     (send _xyz :deserialize buf ptr-) (incf ptr- (send _xyz :serialization-length))
   ;; ros_basics_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;;
   self)
  )

(setf (get ros_basics_msgs::SimplePose :md5sum-) "1ca46866baf4abe90def17040f56fbd2")
(setf (get ros_basics_msgs::SimplePose :datatype-) "ros_basics_msgs/SimplePose")
(setf (get ros_basics_msgs::SimplePose :definition-)
      "geometry_msgs/Point xyz
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



(provide :ros_basics_msgs/SimplePose "1ca46866baf4abe90def17040f56fbd2")


