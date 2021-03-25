; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-msg)


;//! \htmlinclude SimplePoseStamped.msg.html

(cl:defclass <SimplePoseStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type ros_basics_msgs-msg:SimplePose
    :initform (cl:make-instance 'ros_basics_msgs-msg:SimplePose)))
)

(cl:defclass SimplePoseStamped (<SimplePoseStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplePoseStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplePoseStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-msg:<SimplePoseStamped> is deprecated: use ros_basics_msgs-msg:SimplePoseStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SimplePoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-msg:header-val is deprecated.  Use ros_basics_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SimplePoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-msg:pose-val is deprecated.  Use ros_basics_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplePoseStamped>) ostream)
  "Serializes a message object of type '<SimplePoseStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplePoseStamped>) istream)
  "Deserializes a message object of type '<SimplePoseStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplePoseStamped>)))
  "Returns string type for a message object of type '<SimplePoseStamped>"
  "ros_basics_msgs/SimplePoseStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePoseStamped)))
  "Returns string type for a message object of type 'SimplePoseStamped"
  "ros_basics_msgs/SimplePoseStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplePoseStamped>)))
  "Returns md5sum for a message object of type '<SimplePoseStamped>"
  "9b32f339a300d57b131bcc5fa4fb7c1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplePoseStamped)))
  "Returns md5sum for a message object of type 'SimplePoseStamped"
  "9b32f339a300d57b131bcc5fa4fb7c1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplePoseStamped>)))
  "Returns full string definition for message of type '<SimplePoseStamped>"
  (cl:format cl:nil "Header header~%ros_basics_msgs/SimplePose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_basics_msgs/SimplePose~%geometry_msgs/Point xyz~%ros_basics_msgs/RPY rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_basics_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplePoseStamped)))
  "Returns full string definition for message of type 'SimplePoseStamped"
  (cl:format cl:nil "Header header~%ros_basics_msgs/SimplePose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_basics_msgs/SimplePose~%geometry_msgs/Point xyz~%ros_basics_msgs/RPY rpy~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_basics_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplePoseStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplePoseStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplePoseStamped
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
))
