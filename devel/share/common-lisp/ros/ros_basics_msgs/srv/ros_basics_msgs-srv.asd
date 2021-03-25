
(cl:in-package :asdf)

(defsystem "ros_basics_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :ros_basics_msgs-msg
)
  :components ((:file "_package")
    (:file "AddWaypoint" :depends-on ("_package_AddWaypoint"))
    (:file "_package_AddWaypoint" :depends-on ("_package"))
    (:file "CheckWaypointReached" :depends-on ("_package_CheckWaypointReached"))
    (:file "_package_CheckWaypointReached" :depends-on ("_package"))
    (:file "CurrentWaypoint" :depends-on ("_package_CurrentWaypoint"))
    (:file "_package_CurrentWaypoint" :depends-on ("_package"))
    (:file "GetWaypoints" :depends-on ("_package_GetWaypoints"))
    (:file "_package_GetWaypoints" :depends-on ("_package"))
    (:file "RemoveWaypoint" :depends-on ("_package_RemoveWaypoint"))
    (:file "_package_RemoveWaypoint" :depends-on ("_package"))
    (:file "SetWaypoints" :depends-on ("_package_SetWaypoints"))
    (:file "_package_SetWaypoints" :depends-on ("_package"))
  ))