;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetPTPCommonParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetPTPCommonParams (find-package "DOBOT")))
(unless (find-package "DOBOT::SETPTPCOMMONPARAMS")
  (make-package "DOBOT::SETPTPCOMMONPARAMS"))
(unless (find-package "DOBOT::SETPTPCOMMONPARAMSREQUEST")
  (make-package "DOBOT::SETPTPCOMMONPARAMSREQUEST"))
(unless (find-package "DOBOT::SETPTPCOMMONPARAMSRESPONSE")
  (make-package "DOBOT::SETPTPCOMMONPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::SetPTPCommonParamsRequest
  :super ros::object
  :slots (_velocityRatio _accelerationRatio _isQueued ))

(defmethod dobot::SetPTPCommonParamsRequest
  (:init
   (&key
    ((:velocityRatio __velocityRatio) 0.0)
    ((:accelerationRatio __accelerationRatio) 0.0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _velocityRatio (float __velocityRatio))
   (setq _accelerationRatio (float __accelerationRatio))
   (setq _isQueued __isQueued)
   self)
  (:velocityRatio
   (&optional __velocityRatio)
   (if __velocityRatio (setq _velocityRatio __velocityRatio)) _velocityRatio)
  (:accelerationRatio
   (&optional __accelerationRatio)
   (if __accelerationRatio (setq _accelerationRatio __accelerationRatio)) _accelerationRatio)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; float32 _velocityRatio
    4
    ;; float32 _accelerationRatio
    4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocityRatio
       (sys::poke _velocityRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerationRatio
       (sys::poke _accelerationRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocityRatio
     (setq _velocityRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerationRatio
     (setq _accelerationRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetPTPCommonParamsResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetPTPCommonParamsResponse
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

(defclass dobot::SetPTPCommonParams
  :super ros::object
  :slots ())

(setf (get dobot::SetPTPCommonParams :md5sum-) "07fac5c7832f03b11ac295e63e130ee0")
(setf (get dobot::SetPTPCommonParams :datatype-) "dobot/SetPTPCommonParams")
(setf (get dobot::SetPTPCommonParams :request) dobot::SetPTPCommonParamsRequest)
(setf (get dobot::SetPTPCommonParams :response) dobot::SetPTPCommonParamsResponse)

(defmethod dobot::SetPTPCommonParamsRequest
  (:response () (instance dobot::SetPTPCommonParamsResponse :init)))

(setf (get dobot::SetPTPCommonParamsRequest :md5sum-) "07fac5c7832f03b11ac295e63e130ee0")
(setf (get dobot::SetPTPCommonParamsRequest :datatype-) "dobot/SetPTPCommonParamsRequest")
(setf (get dobot::SetPTPCommonParamsRequest :definition-)
      "float32 velocityRatio
float32 accelerationRatio
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetPTPCommonParamsResponse :md5sum-) "07fac5c7832f03b11ac295e63e130ee0")
(setf (get dobot::SetPTPCommonParamsResponse :datatype-) "dobot/SetPTPCommonParamsResponse")
(setf (get dobot::SetPTPCommonParamsResponse :definition-)
      "float32 velocityRatio
float32 accelerationRatio
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetPTPCommonParams "07fac5c7832f03b11ac295e63e130ee0")


