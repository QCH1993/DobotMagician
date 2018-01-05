;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetARCCmd)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetARCCmd (find-package "DOBOT")))
(unless (find-package "DOBOT::SETARCCMD")
  (make-package "DOBOT::SETARCCMD"))
(unless (find-package "DOBOT::SETARCCMDREQUEST")
  (make-package "DOBOT::SETARCCMDREQUEST"))
(unless (find-package "DOBOT::SETARCCMDRESPONSE")
  (make-package "DOBOT::SETARCCMDRESPONSE"))

(in-package "ROS")





(defclass dobot::SetARCCmdRequest
  :super ros::object
  :slots (_x1 _y1 _z1 _r1 _x2 _y2 _z2 _r2 ))

(defmethod dobot::SetARCCmdRequest
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:z1 __z1) 0.0)
    ((:r1 __r1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:z2 __z2) 0.0)
    ((:r2 __r2) 0.0)
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _z1 (float __z1))
   (setq _r1 (float __r1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _z2 (float __z2))
   (setq _r2 (float __r2))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:z1
   (&optional __z1)
   (if __z1 (setq _z1 __z1)) _z1)
  (:r1
   (&optional __r1)
   (if __r1 (setq _r1 __r1)) _r1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:z2
   (&optional __z2)
   (if __z2 (setq _z2 __z2)) _z2)
  (:r2
   (&optional __r2)
   (if __r2 (setq _r2 __r2)) _r2)
  (:serialization-length
   ()
   (+
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _z1
    4
    ;; float32 _r1
    4
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ;; float32 _z2
    4
    ;; float32 _r2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z1
       (sys::poke _z1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r1
       (sys::poke _r1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z2
       (sys::poke _z2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r2
       (sys::poke _r2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z1
     (setq _z1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r1
     (setq _r1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z2
     (setq _z2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r2
     (setq _r2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetARCCmdResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetARCCmdResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:queuedCmdIndex __queuedCmdIndex) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _queuedCmdIndex (round __queuedCmdIndex))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:queuedCmdIndex
   (&optional __queuedCmdIndex)
   (if __queuedCmdIndex (setq _queuedCmdIndex __queuedCmdIndex)) _queuedCmdIndex)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint64 _queuedCmdIndex
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint64 _queuedCmdIndex
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _queuedCmdIndex (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _queuedCmdIndex) (= (length (_queuedCmdIndex . bv)) 2)) ;; bignum
              (write-long (ash (elt (_queuedCmdIndex . bv) 0) 0) s)
              (write-long (ash (elt (_queuedCmdIndex . bv) 1) -1) s))
             ((and (class _queuedCmdIndex) (= (length (_queuedCmdIndex . bv)) 1)) ;; big1
              (write-long (elt (_queuedCmdIndex . bv) 0) s)
              (write-long (if (>= _queuedCmdIndex 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _queuedCmdIndex s)(write-long (if (>= _queuedCmdIndex 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _queuedCmdIndex
     
#+(or :alpha :irix6 :x86_64)
      (setf _queuedCmdIndex (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _queuedCmdIndex (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass dobot::SetARCCmd
  :super ros::object
  :slots ())

(setf (get dobot::SetARCCmd :md5sum-) "6b277c29ebdf53b160a46c83993b3c02")
(setf (get dobot::SetARCCmd :datatype-) "dobot/SetARCCmd")
(setf (get dobot::SetARCCmd :request) dobot::SetARCCmdRequest)
(setf (get dobot::SetARCCmd :response) dobot::SetARCCmdResponse)

(defmethod dobot::SetARCCmdRequest
  (:response () (instance dobot::SetARCCmdResponse :init)))

(setf (get dobot::SetARCCmdRequest :md5sum-) "6b277c29ebdf53b160a46c83993b3c02")
(setf (get dobot::SetARCCmdRequest :datatype-) "dobot/SetARCCmdRequest")
(setf (get dobot::SetARCCmdRequest :definition-)
      "float32 x1
float32 y1
float32 z1
float32 r1
float32 x2
float32 y2
float32 z2
float32 r2
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetARCCmdResponse :md5sum-) "6b277c29ebdf53b160a46c83993b3c02")
(setf (get dobot::SetARCCmdResponse :datatype-) "dobot/SetARCCmdResponse")
(setf (get dobot::SetARCCmdResponse :definition-)
      "float32 x1
float32 y1
float32 z1
float32 r1
float32 x2
float32 y2
float32 z2
float32 r2
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetARCCmd "6b277c29ebdf53b160a46c83993b3c02")


