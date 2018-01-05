;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetEndEffectorParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetEndEffectorParams (find-package "DOBOT")))
(unless (find-package "DOBOT::SETENDEFFECTORPARAMS")
  (make-package "DOBOT::SETENDEFFECTORPARAMS"))
(unless (find-package "DOBOT::SETENDEFFECTORPARAMSREQUEST")
  (make-package "DOBOT::SETENDEFFECTORPARAMSREQUEST"))
(unless (find-package "DOBOT::SETENDEFFECTORPARAMSRESPONSE")
  (make-package "DOBOT::SETENDEFFECTORPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::SetEndEffectorParamsRequest
  :super ros::object
  :slots (_xBias _yBias _zBias _isQueued ))

(defmethod dobot::SetEndEffectorParamsRequest
  (:init
   (&key
    ((:xBias __xBias) 0.0)
    ((:yBias __yBias) 0.0)
    ((:zBias __zBias) 0.0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _xBias (float __xBias))
   (setq _yBias (float __yBias))
   (setq _zBias (float __zBias))
   (setq _isQueued __isQueued)
   self)
  (:xBias
   (&optional __xBias)
   (if __xBias (setq _xBias __xBias)) _xBias)
  (:yBias
   (&optional __yBias)
   (if __yBias (setq _yBias __yBias)) _yBias)
  (:zBias
   (&optional __zBias)
   (if __zBias (setq _zBias __zBias)) _zBias)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; float32 _xBias
    4
    ;; float32 _yBias
    4
    ;; float32 _zBias
    4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _xBias
       (sys::poke _xBias (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yBias
       (sys::poke _yBias (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zBias
       (sys::poke _zBias (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _xBias
     (setq _xBias (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yBias
     (setq _yBias (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zBias
     (setq _zBias (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetEndEffectorParamsResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetEndEffectorParamsResponse
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

(defclass dobot::SetEndEffectorParams
  :super ros::object
  :slots ())

(setf (get dobot::SetEndEffectorParams :md5sum-) "65e2589a98b434e9e347ef66c32e4f96")
(setf (get dobot::SetEndEffectorParams :datatype-) "dobot/SetEndEffectorParams")
(setf (get dobot::SetEndEffectorParams :request) dobot::SetEndEffectorParamsRequest)
(setf (get dobot::SetEndEffectorParams :response) dobot::SetEndEffectorParamsResponse)

(defmethod dobot::SetEndEffectorParamsRequest
  (:response () (instance dobot::SetEndEffectorParamsResponse :init)))

(setf (get dobot::SetEndEffectorParamsRequest :md5sum-) "65e2589a98b434e9e347ef66c32e4f96")
(setf (get dobot::SetEndEffectorParamsRequest :datatype-) "dobot/SetEndEffectorParamsRequest")
(setf (get dobot::SetEndEffectorParamsRequest :definition-)
      "float32 xBias
float32 yBias
float32 zBias
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetEndEffectorParamsResponse :md5sum-) "65e2589a98b434e9e347ef66c32e4f96")
(setf (get dobot::SetEndEffectorParamsResponse :datatype-) "dobot/SetEndEffectorParamsResponse")
(setf (get dobot::SetEndEffectorParamsResponse :definition-)
      "float32 xBias
float32 yBias
float32 zBias
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetEndEffectorParams "65e2589a98b434e9e347ef66c32e4f96")


