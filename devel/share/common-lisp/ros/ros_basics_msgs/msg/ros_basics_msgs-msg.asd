
(cl:in-package :asdf)

(defsystem "ros_basics_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ProximitySensors" :depends-on ("_package_ProximitySensors"))
    (:file "_package_ProximitySensors" :depends-on ("_package"))
    (:file "RPY" :depends-on ("_package_RPY"))
    (:file "_package_RPY" :depends-on ("_package"))
    (:file "SimplePose" :depends-on ("_package_SimplePose"))
    (:file "_package_SimplePose" :depends-on ("_package"))
    (:file "SimplePoseStamped" :depends-on ("_package_SimplePoseStamped"))
    (:file "_package_SimplePoseStamped" :depends-on ("_package"))
    (:file "SimpleVelocities" :depends-on ("_package_SimpleVelocities"))
    (:file "_package_SimpleVelocities" :depends-on ("_package"))
  ))