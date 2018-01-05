;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetPTPJumpParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetPTPJumpParams (find-package "DOBOT")))
(unless (find-package "DOBOT::SETPTPJUMPPARAMS")
  (make-package "DOBOT::SETPTPJUMPPARAMS"))
(unless (find-package "DOBOT::SETPTPJUMPPARAMSREQUEST")
  (make-package "DOBOT::SETPTPJUMPPARAMSREQUEST"))
(unless (find-package "DOBOT::SETPTPJUMPPARAMSRESPONSE")
  (make-package "DOBOT::SETPTPJUMPPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::SetPTPJumpParamsRequest
  :super ros::object
  :slots (_jumpHeight _zLimit _isQueued ))

(defmethod dobot::SetPTPJumpParamsRequest
  (:init
   (&key
    ((:jumpHeight __jumpHeight) 0.0)
    ((:zLimit __zLimit) 0.0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _jumpHeight (float __jumpHeight))
   (setq _zLimit (float __zLimit))
   (setq _isQueued __isQueued)
   self)
  (:jumpHeight
   (&optional __jumpHeight)
   (if __jumpHeight (setq _jumpHeight __jumpHeight)) _jumpHeight)
  (:zLimit
   (&optional __zLimit)
   (if __zLimit (setq _zLimit __zLimit)) _zLimit)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; float32 _jumpHeight
    4
    ;; float32 _zLimit
    4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _jumpHeight
       (sys::poke _jumpHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zLimit
       (sys::poke _zLimit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _jumpHeight
     (setq _jumpHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zLimit
     (setq _zLimit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetPTPJumpParamsResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetPTPJumpParamsResponse
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

(defclass dobot::SetPTPJumpParams
  :super ros::object
  :slots ())

(setf (get dobot::SetPTPJumpParams :md5sum-) "9264d5750a7f398bdbc1bbd16ec60e63")
(setf (get dobot::SetPTPJumpParams :datatype-) "dobot/SetPTPJumpParams")
(setf (get dobot::SetPTPJumpParams :request) dobot::SetPTPJumpParamsRequest)
(setf (get dobot::SetPTPJumpParams :response) dobot::SetPTPJumpParamsResponse)

(defmethod dobot::SetPTPJumpParamsRequest
  (:response () (instance dobot::SetPTPJumpParamsResponse :init)))

(setf (get dobot::SetPTPJumpParamsRequest :md5sum-) "9264d5750a7f398bdbc1bbd16ec60e63")
(setf (get dobot::SetPTPJumpParamsRequest :datatype-) "dobot/SetPTPJumpParamsRequest")
(setf (get dobot::SetPTPJumpParamsRequest :definition-)
      "float32 jumpHeight
float32 zLimit
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetPTPJumpParamsResponse :md5sum-) "9264d5750a7f398bdbc1bbd16ec60e63")
(setf (get dobot::SetPTPJumpParamsResponse :datatype-) "dobot/SetPTPJumpParamsResponse")
(setf (get dobot::SetPTPJumpParamsResponse :definition-)
      "float32 jumpHeight
float32 zLimit
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetPTPJumpParams "9264d5750a7f398bdbc1bbd16ec60e63")


