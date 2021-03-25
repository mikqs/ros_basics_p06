; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-srv)


;//! \htmlinclude CheckWaypointReached-request.msg.html

(cl:defclass <CheckWaypointReached-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type ros_basics_msgs-msg:SimplePoseStamped
    :initform (cl:make-instance 'ros_basics_msgs-msg:SimplePoseStamped))
   (verbose
    :reader verbose
    :initarg :verbose
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckWaypointReached-request (<CheckWaypointReached-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckWaypointReached-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckWaypointReached-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<CheckWaypointReached-request> is deprecated: use ros_basics_msgs-srv:CheckWaypointReached-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CheckWaypointReached-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:pose-val is deprecated.  Use ros_basics_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'verbose-val :lambda-list '(m))
(cl:defmethod verbose-val ((m <CheckWaypointReached-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:verbose-val is deprecated.  Use ros_basics_msgs-srv:verbose instead.")
  (verbose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckWaypointReached-request>) ostream)
  "Serializes a message object of type '<CheckWaypointReached-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'verbose) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckWaypointReached-request>) istream)
  "Deserializes a message object of type '<CheckWaypointReached-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:slot-value msg 'verbose) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckWaypointReached-request>)))
  "Returns string type for a service object of type '<CheckWaypointReached-request>"
  "ros_basics_msgs/CheckWaypointReachedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckWaypointReached-request)))
  "Returns string type for a service object of type 'CheckWaypointReached-request"
  "ros_basics_msgs/CheckWaypointReachedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckWaypointReached-request>)))
  "Returns md5sum for a message object of type '<CheckWaypointReached-request>"
  "04f34cae25ac370b7cb9f4cd6bf31ca3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckWaypointReached-request)))
  "Returns md5sum for a message object of type 'CheckWaypointReached-request"
  "04f34cae25ac370b7cb9f4cd6bf31ca3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckWaypointReached-request>)))
  "Returns full string definition for message of type '<CheckWaypointReached-request>"
  (cl:format cl:nil "SimplePoseStamped pose~%bool verbose~%~%================================================================================~%MSG: ros_basics_msgs/SimplePoseStamped~%Header header~%ros_basics_msgs/SimplePose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_basics_msgs/SimplePose~%geometry_msgs/Point xyz~%ros_basics_msgs/RPY rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_basics_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckWaypointReached-request)))
  "Returns full string definition for message of type 'CheckWaypointReached-request"
  (cl:format cl:nil "SimplePoseStamped pose~%bool verbose~%~%================================================================================~%MSG: ros_basics_msgs/SimplePoseStamped~%Header header~%ros_basics_msgs/SimplePose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_basics_msgs/SimplePose~%geometry_msgs/Point xyz~%ros_basics_msgs/RPY rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_basics_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckWaypointReached-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckWaypointReached-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckWaypointReached-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':verbose (verbose msg))
))
;//! \htmlinclude CheckWaypointReached-response.msg.html

(cl:defclass <CheckWaypointReached-response> (roslisp-msg-protocol:ros-message)
  ((reached
    :reader reached
    :initarg :reached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckWaypointReached-response (<CheckWaypointReached-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckWaypointReached-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckWaypointReached-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<CheckWaypointReached-response> is deprecated: use ros_basics_msgs-srv:CheckWaypointReached-response instead.")))

(cl:ensure-generic-function 'reached-val :lambda-list '(m))
(cl:defmethod reached-val ((m <CheckWaypointReached-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:reached-val is deprecated.  Use ros_basics_msgs-srv:reached instead.")
  (reached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckWaypointReached-response>) ostream)
  "Serializes a message object of type '<CheckWaypointReached-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckWaypointReached-response>) istream)
  "Deserializes a message object of type '<CheckWaypointReached-response>"
    (cl:setf (cl:slot-value msg 'reached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckWaypointReached-response>)))
  "Returns string type for a service object of type '<CheckWaypointReached-response>"
  "ros_basics_msgs/CheckWaypointReachedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckWaypointReached-response)))
  "Returns string type for a service object of type 'CheckWaypointReached-response"
  "ros_basics_msgs/CheckWaypointReachedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckWaypointReached-response>)))
  "Returns md5sum for a message object of type '<CheckWaypointReached-response>"
  "04f34cae25ac370b7cb9f4cd6bf31ca3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckWaypointReached-response)))
  "Returns md5sum for a message object of type 'CheckWaypointReached-response"
  "04f34cae25ac370b7cb9f4cd6bf31ca3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckWaypointReached-response>)))
  "Returns full string definition for message of type '<CheckWaypointReached-response>"
  (cl:format cl:nil "bool reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckWaypointReached-response)))
  "Returns full string definition for message of type 'CheckWaypointReached-response"
  (cl:format cl:nil "bool reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckWaypointReached-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckWaypointReached-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckWaypointReached-response
    (cl:cons ':reached (reached msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckWaypointReached)))
  'CheckWaypointReached-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckWaypointReached)))
  'CheckWaypointReached-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckWaypointReached)))
  "Returns string type for a service object of type '<CheckWaypointReached>"
  "ros_basics_msgs/CheckWaypointReached")