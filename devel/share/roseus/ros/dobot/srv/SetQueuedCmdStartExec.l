;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetQueuedCmdStartExec)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetQueuedCmdStartExec (find-package "DOBOT")))
(unless (find-package "DOBOT::SETQUEUEDCMDSTARTEXEC")
  (make-package "DOBOT::SETQUEUEDCMDSTARTEXEC"))
(unless (find-package "DOBOT::SETQUEUEDCMDSTARTEXECREQUEST")
  (make-package "DOBOT::SETQUEUEDCMDSTARTEXECREQUEST"))
(unless (find-package "DOBOT::SETQUEUEDCMDSTARTEXECRESPONSE")
  (make-package "DOBOT::SETQUEUEDCMDSTARTEXECRESPONSE"))

(in-package "ROS")





(defclass dobot::SetQueuedCmdStartExecRequest
  :super ros::object
  :slots ())

(defmethod dobot::SetQueuedCmdStartExecRequest
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

(defclass dobot::SetQueuedCmdStartExecResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetQueuedCmdStartExecResponse
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

(defclass dobot::SetQueuedCmdStartExec
  :super ros::object
  :slots ())

(setf (get dobot::SetQueuedCmdStartExec :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdStartExec :datatype-) "dobot/SetQueuedCmdStartExec")
(setf (get dobot::SetQueuedCmdStartExec :request) dobot::SetQueuedCmdStartExecRequest)
(setf (get dobot::SetQueuedCmdStartExec :response) dobot::SetQueuedCmdStartExecResponse)

(defmethod dobot::SetQueuedCmdStartExecRequest
  (:response () (instance dobot::SetQueuedCmdStartExecResponse :init)))

(setf (get dobot::SetQueuedCmdStartExecRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdStartExecRequest :datatype-) "dobot/SetQueuedCmdStartExecRequest")
(setf (get dobot::SetQueuedCmdStartExecRequest :definition-)
      "---
int32 result

")

(setf (get dobot::SetQueuedCmdStartExecResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::SetQueuedCmdStartExecResponse :datatype-) "dobot/SetQueuedCmdStartExecResponse")
(setf (get dobot::SetQueuedCmdStartExecResponse :definition-)
      "---
int32 result

")



(provide :dobot/SetQueuedCmdStartExec "034a8e20d6a306665e3a5b340fab3f09")


