;; Auto-generated. Do not edit!


(when (boundp 'dobot::ClearAllAlarmsState)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'ClearAllAlarmsState (find-package "DOBOT")))
(unless (find-package "DOBOT::CLEARALLALARMSSTATE")
  (make-package "DOBOT::CLEARALLALARMSSTATE"))
(unless (find-package "DOBOT::CLEARALLALARMSSTATEREQUEST")
  (make-package "DOBOT::CLEARALLALARMSSTATEREQUEST"))
(unless (find-package "DOBOT::CLEARALLALARMSSTATERESPONSE")
  (make-package "DOBOT::CLEARALLALARMSSTATERESPONSE"))

(in-package "ROS")





(defclass dobot::ClearAllAlarmsStateRequest
  :super ros::object
  :slots ())

(defmethod dobot::ClearAllAlarmsStateRequest
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

(defclass dobot::ClearAllAlarmsStateResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::ClearAllAlarmsStateResponse
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

(defclass dobot::ClearAllAlarmsState
  :super ros::object
  :slots ())

(setf (get dobot::ClearAllAlarmsState :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::ClearAllAlarmsState :datatype-) "dobot/ClearAllAlarmsState")
(setf (get dobot::ClearAllAlarmsState :request) dobot::ClearAllAlarmsStateRequest)
(setf (get dobot::ClearAllAlarmsState :response) dobot::ClearAllAlarmsStateResponse)

(defmethod dobot::ClearAllAlarmsStateRequest
  (:response () (instance dobot::ClearAllAlarmsStateResponse :init)))

(setf (get dobot::ClearAllAlarmsStateRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::ClearAllAlarmsStateRequest :datatype-) "dobot/ClearAllAlarmsStateRequest")
(setf (get dobot::ClearAllAlarmsStateRequest :definition-)
      "---
int32 result

")

(setf (get dobot::ClearAllAlarmsStateResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get dobot::ClearAllAlarmsStateResponse :datatype-) "dobot/ClearAllAlarmsStateResponse")
(setf (get dobot::ClearAllAlarmsStateResponse :definition-)
      "---
int32 result

")



(provide :dobot/ClearAllAlarmsState "034a8e20d6a306665e3a5b340fab3f09")


