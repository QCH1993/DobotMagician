;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetEMotor)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetEMotor (find-package "DOBOT")))
(unless (find-package "DOBOT::SETEMOTOR")
  (make-package "DOBOT::SETEMOTOR"))
(unless (find-package "DOBOT::SETEMOTORREQUEST")
  (make-package "DOBOT::SETEMOTORREQUEST"))
(unless (find-package "DOBOT::SETEMOTORRESPONSE")
  (make-package "DOBOT::SETEMOTORRESPONSE"))

(in-package "ROS")





(defclass dobot::SetEMotorRequest
  :super ros::object
  :slots (_index _isEnabled _speed _isQueued ))

(defmethod dobot::SetEMotorRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:isEnabled __isEnabled) 0)
    ((:speed __speed) 0.0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _isEnabled (round __isEnabled))
   (setq _speed (float __speed))
   (setq _isQueued __isQueued)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:isEnabled
   (&optional __isEnabled)
   (if __isEnabled (setq _isEnabled __isEnabled)) _isEnabled)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; uint8 _index
    1
    ;; uint8 _isEnabled
    1
    ;; float32 _speed
    4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _index
       (write-byte _index s)
     ;; uint8 _isEnabled
       (write-byte _isEnabled s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isEnabled
     (setq _isEnabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetEMotorResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetEMotorResponse
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

(defclass dobot::SetEMotor
  :super ros::object
  :slots ())

(setf (get dobot::SetEMotor :md5sum-) "a45df13761ba868c43b89ce505bf680a")
(setf (get dobot::SetEMotor :datatype-) "dobot/SetEMotor")
(setf (get dobot::SetEMotor :request) dobot::SetEMotorRequest)
(setf (get dobot::SetEMotor :response) dobot::SetEMotorResponse)

(defmethod dobot::SetEMotorRequest
  (:response () (instance dobot::SetEMotorResponse :init)))

(setf (get dobot::SetEMotorRequest :md5sum-) "a45df13761ba868c43b89ce505bf680a")
(setf (get dobot::SetEMotorRequest :datatype-) "dobot/SetEMotorRequest")
(setf (get dobot::SetEMotorRequest :definition-)
      "uint8 index
uint8 isEnabled
float32 speed
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetEMotorResponse :md5sum-) "a45df13761ba868c43b89ce505bf680a")
(setf (get dobot::SetEMotorResponse :datatype-) "dobot/SetEMotorResponse")
(setf (get dobot::SetEMotorResponse :definition-)
      "uint8 index
uint8 isEnabled
float32 speed
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetEMotor "a45df13761ba868c43b89ce505bf680a")


