;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetQueuedCmdClear)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetQueuedCmdClear (find-package "DOBOT")))
(unless (find-package "DOBOT::SETQUEUEDCMDCLEAR")
  (make-package "DOBOT::SETQUEUEDCMDCLEAR"))
(unless (find-package "DOBOT::SETQUEUEDCMDCLEARREQUEST")
  (make-package "DOBOT::SETQUEUEDCMDCLEARREQUEST"))
(unless (find-package "DOBOT::SETQUEUEDCMDCLEARRESPONSE")
  (make-package "DOBOT::SETQUEUEDCMDCLEARRESPONSE"))

(in-package "ROS")





(defclass dobot::SetQueuedCmdClearRequest
  :super ros::object
  :slots ())

(defmethod dobot::SetQueuedCmdClearRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dobot::SetQueuedCmdClearResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetQueuedCmdClearResponse
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

(defclass dobot::SetQueuedCmdClear
  :super ros::object
  :slots ())

(setf (get dobot::SetQueuedCmdClear :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdClear :datatype-) "dobot/SetQueuedCmdClear")
(setf (get dobot::SetQueuedCmdClear :request) dobot::SetQueuedCmdClearRequest)
(setf (get dobot::SetQueuedCmdClear :response) dobot::SetQueuedCmdClearResponse)

(defmethod dobot::SetQueuedCmdClearRequest
  (:response () (instance dobot::SetQueuedCmdClearResponse :init)))

(setf (get dobot::SetQueuedCmdClearRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdClearRequest :datatype-) "dobot/SetQueuedCmdClearRequest")
(setf (get dobot::SetQueuedCmdClearRequest :definition-)
      "---
int32 result

")

(setf (get dobot::SetQueuedCmdClearResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdClearResponse :datatype-) "dobot/SetQueuedCmdClearResponse")
(setf (get dobot::SetQueuedCmdClearResponse :definition-)
      "---
int32 result

")



(provide :dobot/SetQueuedCmdClear "034a8e20d6a306665e3a5b340fab3f09")


