; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-srv)


;//! \htmlinclude RemoveWaypoint-request.msg.html

(cl:defclass <RemoveWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((idx
    :reader idx
    :initarg :idx
    :type cl:integer
    :initform 0))
)

(cl:defclass RemoveWaypoint-request (<RemoveWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<RemoveWaypoint-request> is deprecated: use ros_basics_msgs-srv:RemoveWaypoint-request instead.")))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <RemoveWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:idx-val is deprecated.  Use ros_basics_msgs-srv:idx instead.")
  (idx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveWaypoint-request>) ostream)
  "Serializes a message object of type '<RemoveWaypoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveWaypoint-request>) istream)
  "Deserializes a message object of type '<RemoveWaypoint-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveWaypoint-request>)))
  "Returns string type for a service object of type '<RemoveWaypoint-request>"
  "ros_basics_msgs/RemoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint-request)))
  "Returns string type for a service object of type 'RemoveWaypoint-request"
  "ros_basics_msgs/RemoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveWaypoint-request>)))
  "Returns md5sum for a message object of type '<RemoveWaypoint-request>"
  "034564533f8553dbc4b5af50cf500e64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveWaypoint-request)))
  "Returns md5sum for a message object of type 'RemoveWaypoint-request"
  "034564533f8553dbc4b5af50cf500e64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveWaypoint-request>)))
  "Returns full string definition for message of type '<RemoveWaypoint-request>"
  (cl:format cl:nil "uint32 idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveWaypoint-request)))
  "Returns full string definition for message of type 'RemoveWaypoint-request"
  (cl:format cl:nil "uint32 idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveWaypoint-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveWaypoint-request
    (cl:cons ':idx (idx msg))
))
;//! \htmlinclude RemoveWaypoint-response.msg.html

(cl:defclass <RemoveWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((removed
    :reader removed
    :initarg :removed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveWaypoint-response (<RemoveWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<RemoveWaypoint-response> is deprecated: use ros_basics_msgs-srv:RemoveWaypoint-response instead.")))

(cl:ensure-generic-function 'removed-val :lambda-list '(m))
(cl:defmethod removed-val ((m <RemoveWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:removed-val is deprecated.  Use ros_basics_msgs-srv:removed instead.")
  (removed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveWaypoint-response>) ostream)
  "Serializes a message object of type '<RemoveWaypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'removed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveWaypoint-response>) istream)
  "Deserializes a message object of type '<RemoveWaypoint-response>"
    (cl:setf (cl:slot-value msg 'removed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveWaypoint-response>)))
  "Returns string type for a service object of type '<RemoveWaypoint-response>"
  "ros_basics_msgs/RemoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint-response)))
  "Returns string type for a service object of type 'RemoveWaypoint-response"
  "ros_basics_msgs/RemoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveWaypoint-response>)))
  "Returns md5sum for a message object of type '<RemoveWaypoint-response>"
  "034564533f8553dbc4b5af50cf500e64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveWaypoint-response)))
  "Returns md5sum for a message object of type 'RemoveWaypoint-response"
  "034564533f8553dbc4b5af50cf500e64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveWaypoint-response>)))
  "Returns full string definition for message of type '<RemoveWaypoint-response>"
  (cl:format cl:nil "bool removed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveWaypoint-response)))
  "Returns full string definition for message of type 'RemoveWaypoint-response"
  (cl:format cl:nil "bool removed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveWaypoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveWaypoint-response
    (cl:cons ':removed (removed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveWaypoint)))
  'RemoveWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveWaypoint)))
  'RemoveWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint)))
  "Returns string type for a service object of type '<RemoveWaypoint>"
  "ros_basics_msgs/RemoveWaypoint")