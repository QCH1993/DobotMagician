;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetQueuedCmdForceStopExec)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetQueuedCmdForceStopExec (find-package "DOBOT")))
(unless (find-package "DOBOT::SETQUEUEDCMDFORCESTOPEXEC")
  (make-package "DOBOT::SETQUEUEDCMDFORCESTOPEXEC"))
(unless (find-package "DOBOT::SETQUEUEDCMDFORCESTOPEXECREQUEST")
  (make-package "DOBOT::SETQUEUEDCMDFORCESTOPEXECREQUEST"))
(unless (find-package "DOBOT::SETQUEUEDCMDFORCESTOPEXECRESPONSE")
  (make-package "DOBOT::SETQUEUEDCMDFORCESTOPEXECRESPONSE"))

(in-package "ROS")





(defclass dobot::SetQueuedCmdForceStopExecRequest
  :super ros::object
  :slots ())

(defmethod dobot::SetQueuedCmdForceStopExecRequest
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

(defclass dobot::SetQueuedCmdForceStopExecResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetQueuedCmdForceStopExecResponse
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

(defclass dobot::SetQueuedCmdForceStopExec
  :super ros::object
  :slots ())

(setf (get dobot::SetQueuedCmdForceStopExec :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdForceStopExec :datatype-) "dobot/SetQueuedCmdForceStopExec")
(setf (get dobot::SetQueuedCmdForceStopExec :request) dobot::SetQueuedCmdForceStopExecRequest)
(setf (get dobot::SetQueuedCmdForceStopExec :response) dobot::SetQueuedCmdForceStopExecResponse)

(defmethod dobot::SetQueuedCmdForceStopExecRequest
  (:response () (instance dobot::SetQueuedCmdForceStopExecResponse :init)))

(setf (get dobot::SetQueuedCmdForceStopExecRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdForceStopExecRequest :datatype-) "dobot/SetQueuedCmdForceStopExecRequest")
(setf (get dobot::SetQueuedCmdForceStopExecRequest :definition-)
      "---
int32 result

")

(setf (get dobot::SetQueuedCmdForceStopExecResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdForceStopExecResponse :datatype-) "dobot/SetQueuedCmdForceStopExecResponse")
(setf (get dobot::SetQueuedCmdForceStopExecResponse :definition-)
      "---
int32 result

")



(provide :dobot/SetQueuedCmdForceStopExec "034a8e20d6a306665e3a5b340fab3f09")


