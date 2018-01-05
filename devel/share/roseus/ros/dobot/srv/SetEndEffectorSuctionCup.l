;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetEndEffectorSuctionCup)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetEndEffectorSuctionCup (find-package "DOBOT")))
(unless (find-package "DOBOT::SETENDEFFECTORSUCTIONCUP")
  (make-package "DOBOT::SETENDEFFECTORSUCTIONCUP"))
(unless (find-package "DOBOT::SETENDEFFECTORSUCTIONCUPREQUEST")
  (make-package "DOBOT::SETENDEFFECTORSUCTIONCUPREQUEST"))
(unless (find-package "DOBOT::SETENDEFFECTORSUCTIONCUPRESPONSE")
  (make-package "DOBOT::SETENDEFFECTORSUCTIONCUPRESPONSE"))

(in-package "ROS")





(defclass dobot::SetEndEffectorSuctionCupRequest
  :super ros::object
  :slots (_enableCtrl _suck _isQueued ))

(defmethod dobot::SetEndEffectorSuctionCupRequest
  (:init
   (&key
    ((:enableCtrl __enableCtrl) 0)
    ((:suck __suck) 0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _enableCtrl (round __enableCtrl))
   (setq _suck (round __suck))
   (setq _isQueued __isQueued)
   self)
  (:enableCtrl
   (&optional __enableCtrl)
   (if __enableCtrl (setq _enableCtrl __enableCtrl)) _enableCtrl)
  (:suck
   (&optional __suck)
   (if __suck (setq _suck __suck)) _suck)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; uint8 _enableCtrl
    1
    ;; uint8 _suck
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
     ;; uint8 _suck
       (write-byte _suck s)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _enableCtrl
     (setq _enableCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _suck
     (setq _suck (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetEndEffectorSuctionCupResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetEndEffectorSuctionCupResponse
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

(defclass dobot::SetEndEffectorSuctionCup
  :super ros::object
  :slots ())

(setf (get dobot::SetEndEffectorSuctionCup :md5sum-) "27763da58719d6c55997a5f535fcffda")
(setf (get dobot::SetEndEffectorSuctionCup :datatype-) "dobot/SetEndEffectorSuctionCup")
(setf (get dobot::SetEndEffectorSuctionCup :request) dobot::SetEndEffectorSuctionCupRequest)
(setf (get dobot::SetEndEffectorSuctionCup :response) dobot::SetEndEffectorSuctionCupResponse)

(defmethod dobot::SetEndEffectorSuctionCupRequest
  (:response () (instance dobot::SetEndEffectorSuctionCupResponse :init)))

(setf (get dobot::SetEndEffectorSuctionCupRequest :md5sum-) "27763da58719d6c55997a5f535fcffda")
(setf (get dobot::SetEndEffectorSuctionCupRequest :datatype-) "dobot/SetEndEffectorSuctionCupRequest")
(setf (get dobot::SetEndEffectorSuctionCupRequest :definition-)
      "uint8 enableCtrl
uint8 suck
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetEndEffectorSuctionCupResponse :md5sum-) "27763da58719d6c55997a5f535fcffda")
(setf (get dobot::SetEndEffectorSuctionCupResponse :datatype-) "dobot/SetEndEffectorSuctionCupResponse")
(setf (get dobot::SetEndEffectorSuctionCupResponse :definition-)
      "uint8 enableCtrl
uint8 suck
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetEndEffectorSuctionCup "27763da58719d6c55997a5f535fcffda")


