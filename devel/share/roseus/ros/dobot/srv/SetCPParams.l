;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetCPParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetCPParams (find-package "DOBOT")))
(unless (find-package "DOBOT::SETCPPARAMS")
  (make-package "DOBOT::SETCPPARAMS"))
(unless (find-package "DOBOT::SETCPPARAMSREQUEST")
  (make-package "DOBOT::SETCPPARAMSREQUEST"))
(unless (find-package "DOBOT::SETCPPARAMSRESPONSE")
  (make-package "DOBOT::SETCPPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::SetCPParamsRequest
  :super ros::object
  :slots (_planAcc _junctionVel _acc _realTimeTrack _isQueued ))

(defmethod dobot::SetCPParamsRequest
  (:init
   (&key
    ((:planAcc __planAcc) 0.0)
    ((:junctionVel __junctionVel) 0.0)
    ((:acc __acc) 0.0)
    ((:realTimeTrack __realTimeTrack) 0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _planAcc (float __planAcc))
   (setq _junctionVel (float __junctionVel))
   (setq _acc (float __acc))
   (setq _realTimeTrack (round __realTimeTrack))
   (setq _isQueued __isQueued)
   self)
  (:planAcc
   (&optional __planAcc)
   (if __planAcc (setq _planAcc __planAcc)) _planAcc)
  (:junctionVel
   (&optional __junctionVel)
   (if __junctionVel (setq _junctionVel __junctionVel)) _junctionVel)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:realTimeTrack
   (&optional __realTimeTrack)
   (if __realTimeTrack (setq _realTimeTrack __realTimeTrack)) _realTimeTrack)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; float32 _planAcc
    4
    ;; float32 _junctionVel
    4
    ;; float32 _acc
    4
    ;; uint8 _realTimeTrack
    1
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _planAcc
       (sys::poke _planAcc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _junctionVel
       (sys::poke _junctionVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _realTimeTrack
       (write-byte _realTimeTrack s)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _planAcc
     (setq _planAcc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _junctionVel
     (setq _junctionVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _realTimeTrack
     (setq _realTimeTrack (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetCPParamsResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetCPParamsResponse
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

(defclass dobot::SetCPParams
  :super ros::object
  :slots ())

(setf (get dobot::SetCPParams :md5sum-) "f1c22d901d2cad5a8687473723199ac1")
(setf (get dobot::SetCPParams :datatype-) "dobot/SetCPParams")
(setf (get dobot::SetCPParams :request) dobot::SetCPParamsRequest)
(setf (get dobot::SetCPParams :response) dobot::SetCPParamsResponse)

(defmethod dobot::SetCPParamsRequest
  (:response () (instance dobot::SetCPParamsResponse :init)))

(setf (get dobot::SetCPParamsRequest :md5sum-) "f1c22d901d2cad5a8687473723199ac1")
(setf (get dobot::SetCPParamsRequest :datatype-) "dobot/SetCPParamsRequest")
(setf (get dobot::SetCPParamsRequest :definition-)
      "float32 planAcc
float32 junctionVel
float32 acc
uint8 realTimeTrack
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetCPParamsResponse :md5sum-) "f1c22d901d2cad5a8687473723199ac1")
(setf (get dobot::SetCPParamsResponse :datatype-) "dobot/SetCPParamsResponse")
(setf (get dobot::SetCPParamsResponse :definition-)
      "float32 planAcc
float32 junctionVel
float32 acc
uint8 realTimeTrack
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetCPParams "f1c22d901d2cad5a8687473723199ac1")


