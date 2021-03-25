; Auto-generated. Do not edit!


(cl:in-package ros_basics_msgs-srv)


;//! \htmlinclude AddWaypoint-request.msg.html

(cl:defclass <AddWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass AddWaypoint-request (<AddWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<AddWaypoint-request> is deprecated: use ros_basics_msgs-srv:AddWaypoint-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <AddWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_basics_msgs-srv:goal-val is deprecated.  Use ros_basics_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWaypoint-request>) ostream)
  "Serializes a message object of type '<AddWaypoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWaypoint-request>) istream)
  "Deserializes a message object of type '<AddWaypoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWaypoint-request>)))
  "Returns string type for a service object of type '<AddWaypoint-request>"
  "ros_basics_msgs/AddWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint-request)))
  "Returns string type for a service object of type 'AddWaypoint-request"
  "ros_basics_msgs/AddWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWaypoint-request>)))
  "Returns md5sum for a message object of type '<AddWaypoint-request>"
  "d74cb68b87f4de16729735cf85932163")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWaypoint-request)))
  "Returns md5sum for a message object of type 'AddWaypoint-request"
  "d74cb68b87f4de16729735cf85932163")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWaypoint-request>)))
  "Returns full string definition for message of type '<AddWaypoint-request>"
  (cl:format cl:nil "geometry_msgs/Pose2D goal~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWaypoint-request)))
  "Returns full string definition for message of type 'AddWaypoint-request"
  (cl:format cl:nil "geometry_msgs/Pose2D goal~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWaypoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWaypoint-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude AddWaypoint-response.msg.html

(cl:defclass <AddWaypoint-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddWaypoint-response (<AddWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_basics_msgs-srv:<AddWaypoint-response> is deprecated: use ros_basics_msgs-srv:AddWaypoint-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWaypoint-response>) ostream)
  "Serializes a message object of type '<AddWaypoint-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWaypoint-response>) istream)
  "Deserializes a message object of type '<AddWaypoint-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWaypoint-response>)))
  "Returns string type for a service object of type '<AddWaypoint-response>"
  "ros_basics_msgs/AddWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint-response)))
  "Returns string type for a service object of type 'AddWaypoint-response"
  "ros_basics_msgs/AddWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWaypoint-response>)))
  "Returns md5sum for a message object of type '<AddWaypoint-response>"
  "d74cb68b87f4de16729735cf85932163")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWaypoint-response)))
  "Returns md5sum for a message object of type 'AddWaypoint-response"
  "d74cb68b87f4de16729735cf85932163")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWaypoint-response>)))
  "Returns full string definition for message of type '<AddWaypoint-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWaypoint-response)))
  "Returns full string definition for message of type 'AddWaypoint-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWaypoint-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWaypoint-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddWaypoint)))
  'AddWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddWaypoint)))
  'AddWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint)))
  "Returns string type for a service object of type '<AddWaypoint>"
  "ros_basics_msgs/AddWaypoint")