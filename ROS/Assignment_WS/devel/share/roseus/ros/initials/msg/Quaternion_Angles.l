;; Auto-generated. Do not edit!


(when (boundp 'initials::Quaternion_Angles)
  (if (not (find-package "INITIALS"))
    (make-package "INITIALS"))
  (shadow 'Quaternion_Angles (find-package "INITIALS")))
(unless (find-package "INITIALS::QUATERNION_ANGLES")
  (make-package "INITIALS::QUATERNION_ANGLES"))

(in-package "ROS")
;;//! \htmlinclude Quaternion_Angles.msg.html


(defclass initials::Quaternion_Angles
  :super ros::object
  :slots (_X_quaternion _Y_quaternion _Z_quaternion _W_quaternion ))

(defmethod initials::Quaternion_Angles
  (:init
   (&key
    ((:X_quaternion __X_quaternion) 0)
    ((:Y_quaternion __Y_quaternion) 0)
    ((:Z_quaternion __Z_quaternion) 0)
    ((:W_quaternion __W_quaternion) 0)
    )
   (send-super :init)
   (setq _X_quaternion (round __X_quaternion))
   (setq _Y_quaternion (round __Y_quaternion))
   (setq _Z_quaternion (round __Z_quaternion))
   (setq _W_quaternion (round __W_quaternion))
   self)
  (:X_quaternion
   (&optional __X_quaternion)
   (if __X_quaternion (setq _X_quaternion __X_quaternion)) _X_quaternion)
  (:Y_quaternion
   (&optional __Y_quaternion)
   (if __Y_quaternion (setq _Y_quaternion __Y_quaternion)) _Y_quaternion)
  (:Z_quaternion
   (&optional __Z_quaternion)
   (if __Z_quaternion (setq _Z_quaternion __Z_quaternion)) _Z_quaternion)
  (:W_quaternion
   (&optional __W_quaternion)
   (if __W_quaternion (setq _W_quaternion __W_quaternion)) _W_quaternion)
  (:serialization-length
   ()
   (+
    ;; int64 _X_quaternion
    8
    ;; int64 _Y_quaternion
    8
    ;; int64 _Z_quaternion
    8
    ;; int64 _W_quaternion
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _X_quaternion
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _X_quaternion (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _X_quaternion) (= (length (_X_quaternion . bv)) 2)) ;; bignum
              (write-long (ash (elt (_X_quaternion . bv) 0) 0) s)
              (write-long (ash (elt (_X_quaternion . bv) 1) -1) s))
             ((and (class _X_quaternion) (= (length (_X_quaternion . bv)) 1)) ;; big1
              (write-long (elt (_X_quaternion . bv) 0) s)
              (write-long (if (>= _X_quaternion 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _X_quaternion s)(write-long (if (>= _X_quaternion 0) 0 #xffffffff) s)))
     ;; int64 _Y_quaternion
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Y_quaternion (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Y_quaternion) (= (length (_Y_quaternion . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Y_quaternion . bv) 0) 0) s)
              (write-long (ash (elt (_Y_quaternion . bv) 1) -1) s))
             ((and (class _Y_quaternion) (= (length (_Y_quaternion . bv)) 1)) ;; big1
              (write-long (elt (_Y_quaternion . bv) 0) s)
              (write-long (if (>= _Y_quaternion 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Y_quaternion s)(write-long (if (>= _Y_quaternion 0) 0 #xffffffff) s)))
     ;; int64 _Z_quaternion
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Z_quaternion (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Z_quaternion) (= (length (_Z_quaternion . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Z_quaternion . bv) 0) 0) s)
              (write-long (ash (elt (_Z_quaternion . bv) 1) -1) s))
             ((and (class _Z_quaternion) (= (length (_Z_quaternion . bv)) 1)) ;; big1
              (write-long (elt (_Z_quaternion . bv) 0) s)
              (write-long (if (>= _Z_quaternion 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Z_quaternion s)(write-long (if (>= _Z_quaternion 0) 0 #xffffffff) s)))
     ;; int64 _W_quaternion
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _W_quaternion (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _W_quaternion) (= (length (_W_quaternion . bv)) 2)) ;; bignum
              (write-long (ash (elt (_W_quaternion . bv) 0) 0) s)
              (write-long (ash (elt (_W_quaternion . bv) 1) -1) s))
             ((and (class _W_quaternion) (= (length (_W_quaternion . bv)) 1)) ;; big1
              (write-long (elt (_W_quaternion . bv) 0) s)
              (write-long (if (>= _W_quaternion 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _W_quaternion s)(write-long (if (>= _W_quaternion 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _X_quaternion
#+(or :alpha :irix6 :x86_64)
      (setf _X_quaternion (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _X_quaternion (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _Y_quaternion
#+(or :alpha :irix6 :x86_64)
      (setf _Y_quaternion (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Y_quaternion (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _Z_quaternion
#+(or :alpha :irix6 :x86_64)
      (setf _Z_quaternion (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Z_quaternion (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _W_quaternion
#+(or :alpha :irix6 :x86_64)
      (setf _W_quaternion (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _W_quaternion (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get initials::Quaternion_Angles :md5sum-) "292272218170789099d95a650288f820")
(setf (get initials::Quaternion_Angles :datatype-) "initials/Quaternion_Angles")
(setf (get initials::Quaternion_Angles :definition-)
      "int64 X_quaternion
int64 Y_quaternion
int64 Z_quaternion
int64 W_quaternion

")



(provide :initials/Quaternion_Angles "292272218170789099d95a650288f820")


