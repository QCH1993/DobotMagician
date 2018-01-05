;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetQueuedCmdStopExec)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetQueuedCmdStopExec (find-package "DOBOT")))
(unless (find-package "DOBOT::SETQUEUEDCMDSTOPEXEC")
  (make-package "DOBOT::SETQUEUEDCMDSTOPEXEC"))
(unless (find-package "DOBOT::SETQUEUEDCMDSTOPEXECREQUEST")
  (make-package "DOBOT::SETQUEUEDCMDSTOPEXECREQUEST"))
(unless (find-package "DOBOT::SETQUEUEDCMDSTOPEXECRESPONSE")
  (make-package "DOBOT::SETQUEUEDCMDSTOPEXECRESPONSE"))

(in-package "ROS")





(defclass dobot::SetQueuedCmdStopExecRequest
  :super ros::object
  :slots ())

(defmethod dobot::SetQueuedCmdStopExecRequest
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

(defclass dobot::SetQueuedCmdStopExecResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetQueuedCmdStopExecResponse
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

(defclass dobot::SetQueuedCmdStopExec
  :super ros::object
  :slots ())

(setf (get dobot::SetQueuedCmdStopExec :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdStopExec :datatype-) "dobot/SetQueuedCmdStopExec")
(setf (get dobot::SetQueuedCmdStopExec :request) dobot::SetQueuedCmdStopExecRequest)
(setf (get dobot::SetQueuedCmdStopExec :response) dobot::SetQueuedCmdStopExecResponse)

(defmethod dobot::SetQueuedCmdStopExecRequest
  (:response () (instance dobot::SetQueuedCmdStopExecResponse :init)))

(setf (get dobot::SetQueuedCmdStopExecRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdStopExecRequest :datatype-) "dobot/SetQueuedCmdStopExecRequest")
(setf (get dobot::SetQueuedCmdStopExecRequest :definition-)
      "---
int32 result

")

(setf (get dobot::SetQueuedCmdStopExecResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdStopExecResponse :datatype-) "dobot/SetQueuedCmdStopExecResponse")
(setf (get dobot::SetQueuedCmdStopExecResponse :definition-)
      "---
int32 result

")



(provide :dobot/SetQueuedCmdStopExec "034a8e20d6a306665e3a5b340fab3f09")


