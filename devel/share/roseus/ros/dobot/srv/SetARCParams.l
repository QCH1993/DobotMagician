;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetARCParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetARCParams (find-package "DOBOT")))
(unless (find-package "DOBOT::SETARCPARAMS")
  (make-package "DOBOT::SETARCPARAMS"))
(unless (find-package "DOBOT::SETARCPARAMSREQUEST")
  (make-package "DOBOT::SETARCPARAMSREQUEST"))
(unless (find-package "DOBOT::SETARCPARAMSRESPONSE")
  (make-package "DOBOT::SETARCPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::SetARCParamsRequest
  :super ros::object
  :slots (_xyzVelocity _rVelocity _xyzAcceleration _rAcceleration _isQueued ))

(defmethod dobot::SetARCParamsRequest
  (:init
   (&key
    ((:xyzVelocity __xyzVelocity) 0.0)
    ((:rVelocity __rVelocity) 0.0)
    ((:xyzAcceleration __xyzAcceleration) 0.0)
    ((:rAcceleration __rAcceleration) 0.0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _xyzVelocity (float __xyzVelocity))
   (setq _rVelocity (float __rVelocity))
   (setq _xyzAcceleration (float __xyzAcceleration))
   (setq _rAcceleration (float __rAcceleration))
   (setq _isQueued __isQueued)
   self)
  (:xyzVelocity
   (&optional __xyzVelocity)
   (if __xyzVelocity (setq _xyzVelocity __xyzVelocity)) _xyzVelocity)
  (:rVelocity
   (&optional __rVelocity)
   (if __rVelocity (setq _rVelocity __rVelocity)) _rVelocity)
  (:xyzAcceleration
   (&optional __xyzAcceleration)
   (if __xyzAcceleration (setq _xyzAcceleration __xyzAcceleration)) _xyzAcceleration)
  (:rAcceleration
   (&optional __rAcceleration)
   (if __rAcceleration (setq _rAcceleration __rAcceleration)) _rAcceleration)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; float32 _xyzVelocity
    4
    ;; float32 _rVelocity
    4
    ;; float32 _xyzAcceleration
    4
    ;; float32 _rAcceleration
    4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _xyzVelocity
       (sys::poke _xyzVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rVelocity
       (sys::poke _rVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xyzAcceleration
       (sys::poke _xyzAcceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rAcceleration
       (sys::poke _rAcceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _xyzVelocity
     (setq _xyzVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rVelocity
     (setq _rVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xyzAcceleration
     (setq _xyzAcceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rAcceleration
     (setq _rAcceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetARCParamsResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetARCParamsResponse
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

(defclass dobot::SetARCParams
  :super ros::object
  :slots ())

(setf (get dobot::SetARCParams :md5sum-) "667693b23f3c212883d158fa88cec8f5")
(setf (get dobot::SetARCParams :datatype-) "dobot/SetARCParams")
(setf (get dobot::SetARCParams :request) dobot::SetARCParamsRequest)
(setf (get dobot::SetARCParams :response) dobot::SetARCParamsResponse)

(defmethod dobot::SetARCParamsRequest
  (:response () (instance dobot::SetARCParamsResponse :init)))

(setf (get dobot::SetARCParamsRequest :md5sum-) "667693b23f3c212883d158fa88cec8f5")
(setf (get dobot::SetARCParamsRequest :datatype-) "dobot/SetARCParamsRequest")
(setf (get dobot::SetARCParamsRequest :definition-)
      "float32 xyzVelocity
float32 rVelocity
float32 xyzAcceleration
float32 rAcceleration
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetARCParamsResponse :md5sum-) "667693b23f3c212883d158fa88cec8f5")
(setf (get dobot::SetARCParamsResponse :datatype-) "dobot/SetARCParamsResponse")
(setf (get dobot::SetARCParamsResponse :definition-)
      "float32 xyzVelocity
float32 rVelocity
float32 xyzAcceleration
float32 rAcceleration
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetARCParams "667693b23f3c212883d158fa88cec8f5")


