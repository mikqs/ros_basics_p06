; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-srv)


;//! \htmlinclude CurrentWaypoint-request.msg.html

(cl:defclass <CurrentWaypoint-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CurrentWaypoint-request (<CurrentWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<CurrentWaypoint-request> is deprecated: use ros_basics_msgs-srv:CurrentWaypoint-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentWaypoint-request>) ostream)
  "Serializes a message object of type '<CurrentWaypoint-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentWaypoint-request>) istream)
  "Deserializes a message object of type '<CurrentWaypoint-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentWaypoint-request>)))
  "Returns string type for a service object of type '<CurrentWaypoint-request>"
  "ros_basics_msgs/CurrentWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentWaypoint-request)))
  "Returns string type for a service object of type 'CurrentWaypoint-request"
  "ros_basics_msgs/CurrentWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentWaypoint-request>)))
  "Returns md5sum for a message object of type '<CurrentWaypoint-request>"
  "509ad6487577c30d7a7462175b53403c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentWaypoint-request)))
  "Returns md5sum for a message object of type 'CurrentWaypoint-request"
  "509ad6487577c30d7a7462175b53403c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentWaypoint-request>)))
  "Returns full string definition for message of type '<CurrentWaypoint-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentWaypoint-request)))
  "Returns full string definition for message of type 'CurrentWaypoint-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentWaypoint-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentWaypoint-request
))
;//! \htmlinclude CurrentWaypoint-response.msg.html

(cl:defclass <CurrentWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (is_empty
    :reader is_empty
    :initarg :is_empty
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CurrentWaypoint-response (<CurrentWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<CurrentWaypoint-response> is deprecated: use ros_basics_msgs-srv:CurrentWaypoint-response instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <CurrentWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:goal-val is deprecated.  Use ros_basics_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'is_empty-val :lambda-list '(m))
(cl:defmethod is_empty-val ((m <CurrentWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:is_empty-val is deprecated.  Use ros_basics_msgs-srv:is_empty instead.")
  (is_empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentWaypoint-response>) ostream)
  "Serializes a message object of type '<CurrentWaypoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_empty) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentWaypoint-response>) istream)
  "Deserializes a message object of type '<CurrentWaypoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:slot-value msg 'is_empty) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentWaypoint-response>)))
  "Returns string type for a service object of type '<CurrentWaypoint-response>"
  "ros_basics_msgs/CurrentWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentWaypoint-response)))
  "Returns string type for a service object of type 'CurrentWaypoint-response"
  "ros_basics_msgs/CurrentWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentWaypoint-response>)))
  "Returns md5sum for a message object of type '<CurrentWaypoint-response>"
  "509ad6487577c30d7a7462175b53403c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentWaypoint-response)))
  "Returns md5sum for a message object of type 'CurrentWaypoint-response"
  "509ad6487577c30d7a7462175b53403c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentWaypoint-response>)))
  "Returns full string definition for message of type '<CurrentWaypoint-response>"
  (cl:format cl:nil "geometry_msgs/Pose2D goal~%bool is_empty ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentWaypoint-response)))
  "Returns full string definition for message of type 'CurrentWaypoint-response"
  (cl:format cl:nil "geometry_msgs/Pose2D goal~%bool is_empty ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentWaypoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentWaypoint-response
    (cl:cons ':goal (goal msg))
    (cl:cons ':is_empty (is_empty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CurrentWaypoint)))
  'CurrentWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CurrentWaypoint)))
  'CurrentWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentWaypoint)))
  "Returns string type for a service object of type '<CurrentWaypoint>"
  "ros_basics_msgs/CurrentWaypoint")