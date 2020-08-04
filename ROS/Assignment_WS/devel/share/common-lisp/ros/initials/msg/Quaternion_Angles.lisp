; Auto-generated. Do not edit!


(cl:in-package initials-msg)


;//! \htmlinclude Quaternion_Angles.msg.html

(cl:defclass <Quaternion_Angles> (roslisp-msg-protocol:ros-message)
  ((X_quaternion
    :reader X_quaternion
    :initarg :X_quaternion
    :type cl:integer
    :initform 0)
   (Y_quaternion
    :reader Y_quaternion
    :initarg :Y_quaternion
    :type cl:integer
    :initform 0)
   (Z_quaternion
    :reader Z_quaternion
    :initarg :Z_quaternion
    :type cl:integer
    :initform 0)
   (W_quaternion
    :reader W_quaternion
    :initarg :W_quaternion
    :type cl:integer
    :initform 0))
)

(cl:defclass Quaternion_Angles (<Quaternion_Angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Quaternion_Angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Quaternion_Angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name initials-msg:<Quaternion_Angles> is deprecated: use initials-msg:Quaternion_Angles instead.")))

(cl:ensure-generic-function 'X_quaternion-val :lambda-list '(m))
(cl:defmethod X_quaternion-val ((m <Quaternion_Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader initials-msg:X_quaternion-val is deprecated.  Use initials-msg:X_quaternion instead.")
  (X_quaternion m))

(cl:ensure-generic-function 'Y_quaternion-val :lambda-list '(m))
(cl:defmethod Y_quaternion-val ((m <Quaternion_Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader initials-msg:Y_quaternion-val is deprecated.  Use initials-msg:Y_quaternion instead.")
  (Y_quaternion m))

(cl:ensure-generic-function 'Z_quaternion-val :lambda-list '(m))
(cl:defmethod Z_quaternion-val ((m <Quaternion_Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader initials-msg:Z_quaternion-val is deprecated.  Use initials-msg:Z_quaternion instead.")
  (Z_quaternion m))

(cl:ensure-generic-function 'W_quaternion-val :lambda-list '(m))
(cl:defmethod W_quaternion-val ((m <Quaternion_Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader initials-msg:W_quaternion-val is deprecated.  Use initials-msg:W_quaternion instead.")
  (W_quaternion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Quaternion_Angles>) ostream)
  "Serializes a message object of type '<Quaternion_Angles>"
  (cl:let* ((signed (cl:slot-value msg 'X_quaternion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Y_quaternion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Z_quaternion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'W_quaternion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Quaternion_Angles>) istream)
  "Deserializes a message object of type '<Quaternion_Angles>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'X_quaternion) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Y_quaternion) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Z_quaternion) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'W_quaternion) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Quaternion_Angles>)))
  "Returns string type for a message object of type '<Quaternion_Angles>"
  "initials/Quaternion_Angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Quaternion_Angles)))
  "Returns string type for a message object of type 'Quaternion_Angles"
  "initials/Quaternion_Angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Quaternion_Angles>)))
  "Returns md5sum for a message object of type '<Quaternion_Angles>"
  "292272218170789099d95a650288f820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Quaternion_Angles)))
  "Returns md5sum for a message object of type 'Quaternion_Angles"
  "292272218170789099d95a650288f820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Quaternion_Angles>)))
  "Returns full string definition for message of type '<Quaternion_Angles>"
  (cl:format cl:nil "int64 X_quaternion~%int64 Y_quaternion~%int64 Z_quaternion~%int64 W_quaternion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Quaternion_Angles)))
  "Returns full string definition for message of type 'Quaternion_Angles"
  (cl:format cl:nil "int64 X_quaternion~%int64 Y_quaternion~%int64 Z_quaternion~%int64 W_quaternion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Quaternion_Angles>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Quaternion_Angles>))
  "Converts a ROS message object to a list"
  (cl:list 'Quaternion_Angles
    (cl:cons ':X_quaternion (X_quaternion msg))
    (cl:cons ':Y_quaternion (Y_quaternion msg))
    (cl:cons ':Z_quaternion (Z_quaternion msg))
    (cl:cons ':W_quaternion (W_quaternion msg))
))
