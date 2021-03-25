; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-srv)


;//! \htmlinclude GetWaypoints-request.msg.html

(cl:defclass <GetWaypoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWaypoints-request (<GetWaypoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<GetWaypoints-request> is deprecated: use ros_basics_msgs-srv:GetWaypoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoints-request>) ostream)
  "Serializes a message object of type '<GetWaypoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoints-request>) istream)
  "Deserializes a message object of type '<GetWaypoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoints-request>)))
  "Returns string type for a service object of type '<GetWaypoints-request>"
  "ros_basics_msgs/GetWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints-request)))
  "Returns string type for a service object of type 'GetWaypoints-request"
  "ros_basics_msgs/GetWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoints-request>)))
  "Returns md5sum for a message object of type '<GetWaypoints-request>"
  "0b9e83915d91f5a57f9839688cdeccfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoints-request)))
  "Returns md5sum for a message object of type 'GetWaypoints-request"
  "0b9e83915d91f5a57f9839688cdeccfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoints-request>)))
  "Returns full string definition for message of type '<GetWaypoints-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoints-request)))
  "Returns full string definition for message of type 'GetWaypoints-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoints-request
))
;//! \htmlinclude GetWaypoints-response.msg.html

(cl:defclass <GetWaypoints-response> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D))))
)

(cl:defclass GetWaypoints-response (<GetWaypoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<GetWaypoints-response> is deprecated: use ros_basics_msgs-srv:GetWaypoints-response instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <GetWaypoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:waypoints-val is deprecated.  Use ros_basics_msgs-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoints-response>) ostream)
  "Serializes a message object of type '<GetWaypoints-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoints-response>) istream)
  "Deserializes a message object of type '<GetWaypoints-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoints-response>)))
  "Returns string type for a service object of type '<GetWaypoints-response>"
  "ros_basics_msgs/GetWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints-response)))
  "Returns string type for a service object of type 'GetWaypoints-response"
  "ros_basics_msgs/GetWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoints-response>)))
  "Returns md5sum for a message object of type '<GetWaypoints-response>"
  "0b9e83915d91f5a57f9839688cdeccfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoints-response)))
  "Returns md5sum for a message object of type 'GetWaypoints-response"
  "0b9e83915d91f5a57f9839688cdeccfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoints-response>)))
  "Returns full string definition for message of type '<GetWaypoints-response>"
  (cl:format cl:nil "geometry_msgs/Pose2D[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoints-response)))
  "Returns full string definition for message of type 'GetWaypoints-response"
  (cl:format cl:nil "geometry_msgs/Pose2D[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoints-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoints-response
    (cl:cons ':waypoints (waypoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWaypoints)))
  'GetWaypoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWaypoints)))
  'GetWaypoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints)))
  "Returns string type for a service object of type '<GetWaypoints>"
  "ros_basics_msgs/GetWaypoints")