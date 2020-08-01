
(cl:in-package :asdf)

(defsystem "initials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "initials_msg" :depends-on ("_package_initials_msg"))
    (:file "_package_initials_msg" :depends-on ("_package"))
  ))