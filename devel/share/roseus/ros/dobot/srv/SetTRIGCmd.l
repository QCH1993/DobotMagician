;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetTRIGCmd)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetTRIGCmd (find-package "DOBOT")))
(unless (find-package "DOBOT::SETTRIGCMD")
  (make-package "DOBOT::SETTRIGCMD"))
(unless (find-package "DOBOT::SETTRIGCMDREQUEST")
  (make-package "DOBOT::SETTRIGCMDREQUEST"))
(unless (find-package "DOBOT::SETTRIGCMDRESPONSE")
  (make-package "DOBOT::SETTRIGCMDRESPONSE"))

(in-package "ROS")





(defclass dobot::SetTRIGCmdRequest
  :super ros::object
  :slots (_address _mode _condition _threshold ))

(defmethod dobot::SetTRIGCmdRequest
  (:init
   (&key
    ((:address __address) 0)
    ((:mode __mode) 0)
    ((:condition __condition) 0)
    ((:threshold __threshold) 0)
    )
   (send-super :init)
   (setq _address (round __address))
   (setq _mode (round __mode))
   (setq _condition (round __condition))
   (setq _threshold (round __threshold))
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:condition
   (&optional __condition)
   (if __condition (setq _condition __condition)) _condition)
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:serialization-length
   ()
   (+
    ;; uint8 _address
    1
    ;; uint8 _mode
    1
    ;; uint8 _condition
    1
    ;; uint16 _threshold
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _address
       (write-byte _address s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _condition
       (write-byte _condition s)
     ;; uint16 _threshold
       (write-word _threshold s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _address
     (setq _address (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _condition
     (setq _condition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _threshold
     (setq _threshold (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dobot::SetTRIGCmdResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetTRIGCmdResponse
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

(defclass dobot::SetTRIGCmd
  :super ros::object
  :slots ())

(setf (get dobot::SetTRIGCmd :md5sum-) "8520b4f0d79b5d03aed38c06250faf3b")
(setf (get dobot::SetTRIGCmd :datatype-) "dobot/SetTRIGCmd")
(setf (get dobot::SetTRIGCmd :request) dobot::SetTRIGCmdRequest)
(setf (get dobot::SetTRIGCmd :response) dobot::SetTRIGCmdResponse)

(defmethod dobot::SetTRIGCmdRequest
  (:response () (instance dobot::SetTRIGCmdResponse :init)))

(setf (get dobot::SetTRIGCmdRequest :md5sum-) "8520b4f0d79b5d03aed38c06250faf3b")
(setf (get dobot::SetTRIGCmdRequest :datatype-) "dobot/SetTRIGCmdRequest")
(setf (get dobot::SetTRIGCmdRequest :definition-)
      "uint8 address
uint8 mode
uint8 condition
uint16 threshold
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetTRIGCmdResponse :md5sum-) "8520b4f0d79b5d03aed38c06250faf3b")
(setf (get dobot::SetTRIGCmdResponse :datatype-) "dobot/SetTRIGCmdResponse")
(setf (get dobot::SetTRIGCmdResponse :definition-)
      "uint8 address
uint8 mode
uint8 condition
uint16 threshold
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetTRIGCmd "8520b4f0d79b5d03aed38c06250faf3b")


