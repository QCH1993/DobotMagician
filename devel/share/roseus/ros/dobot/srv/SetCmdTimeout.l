;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetCmdTimeout)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetCmdTimeout (find-package "DOBOT")))
(unless (find-package "DOBOT::SETCMDTIMEOUT")
  (make-package "DOBOT::SETCMDTIMEOUT"))
(unless (find-package "DOBOT::SETCMDTIMEOUTREQUEST")
  (make-package "DOBOT::SETCMDTIMEOUTREQUEST"))
(unless (find-package "DOBOT::SETCMDTIMEOUTRESPONSE")
  (make-package "DOBOT::SETCMDTIMEOUTRESPONSE"))

(in-package "ROS")





(defclass dobot::SetCmdTimeoutRequest
  :super ros::object
  :slots (_timeout ))

(defmethod dobot::SetCmdTimeoutRequest
  (:init
   (&key
    ((:timeout __timeout) 0)
    )
   (send-super :init)
   (setq _timeout (round __timeout))
   self)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; uint32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _timeout
       (write-long _timeout s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _timeout
     (setq _timeout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetCmdTimeoutResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetCmdTimeoutResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetCmdTimeout
  :super ros::object
  :slots ())

(setf (get dobot::SetCmdTimeout :md5sum-) "13441e7d88f3c6f438486b7bab0cc968")
(setf (get dobot::SetCmdTimeout :datatype-) "dobot/SetCmdTimeout")
(setf (get dobot::SetCmdTimeout :request) dobot::SetCmdTimeoutRequest)
(setf (get dobot::SetCmdTimeout :response) dobot::SetCmdTimeoutResponse)

(defmethod dobot::SetCmdTimeoutRequest
  (:response () (instance dobot::SetCmdTimeoutResponse :init)))

(setf (get dobot::SetCmdTimeoutRequest :md5sum-) "13441e7d88f3c6f438486b7bab0cc968")
(setf (get dobot::SetCmdTimeoutRequest :datatype-) "dobot/SetCmdTimeoutRequest")
(setf (get dobot::SetCmdTimeoutRequest :definition-)
      "uint32 timeout
---
int32 result

")

(setf (get dobot::SetCmdTimeoutResponse :md5sum-) "13441e7d88f3c6f438486b7bab0cc968")
(setf (get dobot::SetCmdTimeoutResponse :datatype-) "dobot/SetCmdTimeoutResponse")
(setf (get dobot::SetCmdTimeoutResponse :definition-)
      "uint32 timeout
---
int32 result

")



(provide :dobot/SetCmdTimeout "13441e7d88f3c6f438486b7bab0cc968")


