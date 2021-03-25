;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::RemoveWaypoint)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'RemoveWaypoint (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::REMOVEWAYPOINT")
  (make-package "ROS_BASICS_MSGS::REMOVEWAYPOINT"))
(unless (find-package "ROS_BASICS_MSGS::REMOVEWAYPOINTREQUEST")
  (make-package "ROS_BASICS_MSGS::REMOVEWAYPOINTREQUEST"))
(unless (find-package "ROS_BASICS_MSGS::REMOVEWAYPOINTRESPONSE")
  (make-package "ROS_BASICS_MSGS::REMOVEWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass ros_basics_msgs::RemoveWaypointRequest
  :super ros::object
  :slots (_idx ))

(defmethod ros_basics_msgs::RemoveWaypointRequest
  (:init
   (&key
    ((:idx __idx) 0)
    )
   (send-super :init)
   (setq _idx (round __idx))
   self)
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:serialization-length
   ()
   (+
    ;; uint32 _idx
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _idx
       (write-long _idx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _idx
     (setq _idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_basics_msgs::RemoveWaypointResponse
  :super ros::object
  :slots (_removed ))

(defmethod ros_basics_msgs::RemoveWaypointResponse
  (:init
   (&key
    ((:removed __removed) nil)
    )
   (send-super :init)
   (setq _removed __removed)
   self)
  (:removed
   (&optional (__removed :null))
   (if (not (eq __removed :null)) (setq _removed __removed)) _removed)
  (:serialization-length
   ()
   (+
    ;; bool _removed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _removed
       (if _removed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _removed
     (setq _removed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_basics_msgs::RemoveWaypoint
  :super ros::object
  :slots ())

(setf (get ros_basics_msgs::RemoveWaypoint :md5sum-) "034564533f8553dbc4b5af50cf500e64")
(setf (get ros_basics_msgs::RemoveWaypoint :datatype-) "ros_basics_msgs/RemoveWaypoint")
(setf (get ros_basics_msgs::RemoveWaypoint :request) ros_basics_msgs::RemoveWaypointRequest)
(setf (get ros_basics_msgs::RemoveWaypoint :response) ros_basics_msgs::RemoveWaypointResponse)

(defmethod ros_basics_msgs::RemoveWaypointRequest
  (:response () (instance ros_basics_msgs::RemoveWaypointResponse :init)))

(setf (get ros_basics_msgs::RemoveWaypointRequest :md5sum-) "034564533f8553dbc4b5af50cf500e64")
(setf (get ros_basics_msgs::RemoveWaypointRequest :datatype-) "ros_basics_msgs/RemoveWaypointRequest")
(setf (get ros_basics_msgs::RemoveWaypointRequest :definition-)
      "uint32 idx
---
bool removed
")

(setf (get ros_basics_msgs::RemoveWaypointResponse :md5sum-) "034564533f8553dbc4b5af50cf500e64")
(setf (get ros_basics_msgs::RemoveWaypointResponse :datatype-) "ros_basics_msgs/RemoveWaypointResponse")
(setf (get ros_basics_msgs::RemoveWaypointResponse :definition-)
      "uint32 idx
---
bool removed
")



(provide :ros_basics_msgs/RemoveWaypoint "034564533f8553dbc4b5af50cf500e64")


