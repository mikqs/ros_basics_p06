; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-msg)


;//! \htmlinclude SimpleVelocities.msg.html

(cl:defclass <SimpleVelocities> (roslisp-msg-protocol:ros-message)
  ((v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimpleVelocities (<SimpleVelocities>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleVelocities>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleVelocities)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-msg:<SimpleVelocities> is deprecated: use ros_basics_msgs-msg:SimpleVelocities instead.")))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <SimpleVelocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-msg:v-val is deprecated.  Use ros_basics_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <SimpleVelocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-msg:w-val is deprecated.  Use ros_basics_msgs-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleVelocities>) ostream)
  "Serializes a message object of type '<SimpleVelocities>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleVelocities>) istream)
  "Deserializes a message object of type '<SimpleVelocities>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleVelocities>)))
  "Returns string type for a message object of type '<SimpleVelocities>"
  "ros_basics_msgs/SimpleVelocities")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleVelocities)))
  "Returns string type for a message object of type 'SimpleVelocities"
  "ros_basics_msgs/SimpleVelocities")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleVelocities>)))
  "Returns md5sum for a message object of type '<SimpleVelocities>"
  "e63966e769215a305e1aebe679281346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleVelocities)))
  "Returns md5sum for a message object of type 'SimpleVelocities"
  "e63966e769215a305e1aebe679281346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleVelocities>)))
  "Returns full string definition for message of type '<SimpleVelocities>"
  (cl:format cl:nil "float64 v~%float64 w~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleVelocities)))
  "Returns full string definition for message of type 'SimpleVelocities"
  (cl:format cl:nil "float64 v~%float64 w~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleVelocities>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleVelocities>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleVelocities
    (cl:cons ':v (v msg))
    (cl:cons ':w (w msg))
))
