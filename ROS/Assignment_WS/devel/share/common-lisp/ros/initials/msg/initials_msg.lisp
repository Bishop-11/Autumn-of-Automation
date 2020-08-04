; Auto-generated. Do not edit!


(cl:in-package initials-msg)


;//! \htmlinclude initials_msg.msg.html

(cl:defclass <initials_msg> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular
    :reader angular
    :initarg :angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass initials_msg (<initials_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <initials_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'initials_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name initials-msg:<initials_msg> is deprecated: use initials-msg:initials_msg instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <initials_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader initials-msg:linear-val is deprecated.  Use initials-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <initials_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader initials-msg:angular-val is deprecated.  Use initials-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <initials_msg>) ostream)
  "Serializes a message object of type '<initials_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <initials_msg>) istream)
  "Deserializes a message object of type '<initials_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<initials_msg>)))
  "Returns string type for a message object of type '<initials_msg>"
  "initials/initials_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initials_msg)))
  "Returns string type for a message object of type 'initials_msg"
  "initials/initials_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<initials_msg>)))
  "Returns md5sum for a message object of type '<initials_msg>"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'initials_msg)))
  "Returns md5sum for a message object of type 'initials_msg"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<initials_msg>)))
  "Returns full string definition for message of type '<initials_msg>"
  (cl:format cl:nil "geometry_msgs/Vector3 linear~%geometry_msgs/Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'initials_msg)))
  "Returns full string definition for message of type 'initials_msg"
  (cl:format cl:nil "geometry_msgs/Vector3 linear~%geometry_msgs/Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <initials_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <initials_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'initials_msg
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
