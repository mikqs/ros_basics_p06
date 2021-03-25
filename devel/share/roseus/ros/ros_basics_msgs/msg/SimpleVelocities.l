;; Auto-generated. Do not edit!


(when (boundp 'ros_basics_msgs::SimpleVelocities)
  (if (not (find-package "ROS_BASICS_MSGS"))
    (make-package "ROS_BASICS_MSGS"))
  (shadow 'SimpleVelocities (find-package "ROS_BASICS_MSGS")))
(unless (find-package "ROS_BASICS_MSGS::SIMPLEVELOCITIES")
  (make-package "ROS_BASICS_MSGS::SIMPLEVELOCITIES"))

(in-package "ROS")
;;//! \htmlinclude SimpleVelocities.msg.html


(defclass ros_basics_msgs::SimpleVelocities
  :super ros::object
  :slots (_v _w ))

(defmethod ros_basics_msgs::SimpleVelocities
  (:init
   (&key
    ((:v __v) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _v (float __v))
   (setq _w (float __w))
   self)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float64 _v
    8
    ;; float64 _w
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_basics_msgs::SimpleVelocities :md5sum-) "e63966e769215a305e1aebe679281346")
(setf (get ros_basics_msgs::SimpleVelocities :datatype-) "ros_basics_msgs/SimpleVelocities")
(setf (get ros_basics_msgs::SimpleVelocities :definition-)
      "float64 v
float64 w
")



(provide :ros_basics_msgs/SimpleVelocities "e63966e769215a305e1aebe679281346")


