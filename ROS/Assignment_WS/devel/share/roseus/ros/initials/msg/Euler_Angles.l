;; Auto-generated. Do not edit!


(when (boundp 'initials::Euler_Angles)
  (if (not (find-package "INITIALS"))
    (make-package "INITIALS"))
  (shadow 'Euler_Angles (find-package "INITIALS")))
(unless (find-package "INITIALS::EULER_ANGLES")
  (make-package "INITIALS::EULER_ANGLES"))

(in-package "ROS")
;;//! \htmlinclude Euler_Angles.msg.html


(defclass initials::Euler_Angles
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod initials::Euler_Angles
  (:init
   (&key
    ((:roll __roll) 0)
    ((:pitch __pitch) 0)
    ((:yaw __yaw) 0)
    )
   (send-super :init)
   (setq _roll (round __roll))
   (setq _pitch (round __pitch))
   (setq _yaw (round __yaw))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; int64 _roll
    8
    ;; int64 _pitch
    8
    ;; int64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _roll
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _roll (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _roll) (= (length (_roll . bv)) 2)) ;; bignum
              (write-long (ash (elt (_roll . bv) 0) 0) s)
              (write-long (ash (elt (_roll . bv) 1) -1) s))
             ((and (class _roll) (= (length (_roll . bv)) 1)) ;; big1
              (write-long (elt (_roll . bv) 0) s)
              (write-long (if (>= _roll 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _roll s)(write-long (if (>= _roll 0) 0 #xffffffff) s)))
     ;; int64 _pitch
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pitch (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pitch) (= (length (_pitch . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pitch . bv) 0) 0) s)
              (write-long (ash (elt (_pitch . bv) 1) -1) s))
             ((and (class _pitch) (= (length (_pitch . bv)) 1)) ;; big1
              (write-long (elt (_pitch . bv) 0) s)
              (write-long (if (>= _pitch 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pitch s)(write-long (if (>= _pitch 0) 0 #xffffffff) s)))
     ;; int64 _yaw
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _yaw (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _yaw) (= (length (_yaw . bv)) 2)) ;; bignum
              (write-long (ash (elt (_yaw . bv) 0) 0) s)
              (write-long (ash (elt (_yaw . bv) 1) -1) s))
             ((and (class _yaw) (= (length (_yaw . bv)) 1)) ;; big1
              (write-long (elt (_yaw . bv) 0) s)
              (write-long (if (>= _yaw 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _yaw s)(write-long (if (>= _yaw 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _roll
#+(or :alpha :irix6 :x86_64)
      (setf _roll (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _roll (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _pitch
#+(or :alpha :irix6 :x86_64)
      (setf _pitch (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pitch (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _yaw
#+(or :alpha :irix6 :x86_64)
      (setf _yaw (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _yaw (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get initials::Euler_Angles :md5sum-) "c4aa4458ce92f89616bb6bf530843b96")
(setf (get initials::Euler_Angles :datatype-) "initials/Euler_Angles")
(setf (get initials::Euler_Angles :definition-)
      "int64 roll
int64 pitch
int64 yaw


")



(provide :initials/Euler_Angles "c4aa4458ce92f89616bb6bf530843b96")


