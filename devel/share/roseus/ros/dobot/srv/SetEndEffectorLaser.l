;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetEndEffectorLaser)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetEndEffectorLaser (find-package "DOBOT")))
(unless (find-package "DOBOT::SETENDEFFECTORLASER")
  (make-package "DOBOT::SETENDEFFECTORLASER"))
(unless (find-package "DOBOT::SETENDEFFECTORLASERREQUEST")
  (make-package "DOBOT::SETENDEFFECTORLASERREQUEST"))
(unless (find-package "DOBOT::SETENDEFFECTORLASERRESPONSE")
  (make-package "DOBOT::SETENDEFFECTORLASERRESPONSE"))

(in-package "ROS")





(defclass dobot::SetEndEffectorLaserRequest
  :super ros::object
  :slots (_enableCtrl _on _isQueued ))

(defmethod dobot::SetEndEffectorLaserRequest
  (:init
   (&key
    ((:enableCtrl __enableCtrl) 0)
    ((:on __on) 0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _enableCtrl (round __enableCtrl))
   (setq _on (round __on))
   (setq _isQueued __isQueued)
   self)
  (:enableCtrl
   (&optional __enableCtrl)
   (if __enableCtrl (setq _enableCtrl __enableCtrl)) _enableCtrl)
  (:on
   (&optional __on)
   (if __on (setq _on __on)) _on)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; uint8 _enableCtrl
    1
    ;; uint8 _on
    1
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _enableCtrl
       (write-byte _enableCtrl s)
     ;; uint8 _on
       (write-byte _on s)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _enableCtrl
     (setq _enableCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _on
     (setq _on (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetEndEffectorLaserResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetEndEffectorLaserResponse
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

(defclass dobot::SetEndEffectorLaser
  :super ros::object
  :slots ())

(setf (get dobot::SetEndEffectorLaser :md5sum-) "97ab3479a3c227d7c546855f18fa2912")
(setf (get dobot::SetEndEffectorLaser :datatype-) "dobot/SetEndEffectorLaser")
(setf (get dobot::SetEndEffectorLaser :request) dobot::SetEndEffectorLaserRequest)
(setf (get dobot::SetEndEffectorLaser :response) dobot::SetEndEffectorLaserResponse)

(defmethod dobot::SetEndEffectorLaserRequest
  (:response () (instance dobot::SetEndEffectorLaserResponse :init)))

(setf (get dobot::SetEndEffectorLaserRequest :md5sum-) "97ab3479a3c227d7c546855f18fa2912")
(setf (get dobot::SetEndEffectorLaserRequest :datatype-) "dobot/SetEndEffectorLaserRequest")
(setf (get dobot::SetEndEffectorLaserRequest :definition-)
      "uint8 enableCtrl
uint8 on
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetEndEffectorLaserResponse :md5sum-) "97ab3479a3c227d7c546855f18fa2912")
(setf (get dobot::SetEndEffectorLaserResponse :datatype-) "dobot/SetEndEffectorLaserResponse")
(setf (get dobot::SetEndEffectorLaserResponse :definition-)
      "uint8 enableCtrl
uint8 on
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetEndEffectorLaser "97ab3479a3c227d7c546855f18fa2912")


