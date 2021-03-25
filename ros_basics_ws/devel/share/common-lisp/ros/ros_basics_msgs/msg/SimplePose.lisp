; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-msg)


;//! \htmlinclude SimplePose.msg.html

(cl:defclass <SimplePose> (roslisp-msg-protocol:ros-message)
  ((xyz
    :reader xyz
    :initarg :xyz
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpy
    :reader rpy
    :initarg :rpy
    :type ros_basics_msgs-msg:RPY
    :initform (cl:make-instance 'ros_basics_msgs-msg:RPY)))
)

(cl:defclass SimplePose (<SimplePose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplePose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplePose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-msg:<SimplePose> is deprecated: use ros_basics_msgs-msg:SimplePose instead.")))

(cl:ensure-generic-function 'xyz-val :lambda-list '(m))
(cl:defmethod xyz-val ((m <SimplePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-msg:xyz-val is deprecated.  Use ros_basics_msgs-msg:xyz instead.")
  (xyz m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <SimplePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-msg:rpy-val is deprecated.  Use ros_basics_msgs-msg:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplePose>) ostream)
  "Serializes a message object of type '<SimplePose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xyz) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplePose>) istream)
  "Deserializes a message object of type '<SimplePose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xyz) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplePose>)))
  "Returns string type for a message object of type '<SimplePose>"
  "ros_basics_msgs/SimplePose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePose)))
  "Returns string type for a message object of type 'SimplePose"
  "ros_basics_msgs/SimplePose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplePose>)))
  "Returns md5sum for a message object of type '<SimplePose>"
  "1ca46866baf4abe90def17040f56fbd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplePose)))
  "Returns md5sum for a message object of type 'SimplePose"
  "1ca46866baf4abe90def17040f56fbd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplePose>)))
  "Returns full string definition for message of type '<SimplePose>"
  (cl:format cl:nil "geometry_msgs/Point xyz~%ros_basics_msgs/RPY rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_basics_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplePose)))
  "Returns full string definition for message of type 'SimplePose"
  (cl:format cl:nil "geometry_msgs/Point xyz~%ros_basics_msgs/RPY rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_basics_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplePose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xyz))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplePose>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplePose
    (cl:cons ':xyz (xyz msg))
    (cl:cons ':rpy (rpy msg))
))
