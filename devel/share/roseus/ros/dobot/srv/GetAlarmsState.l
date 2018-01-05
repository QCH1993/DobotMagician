;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetAlarmsState)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetAlarmsState (find-package "DOBOT")))
(unless (find-package "DOBOT::GETALARMSSTATE")
  (make-package "DOBOT::GETALARMSSTATE"))
(unless (find-package "DOBOT::GETALARMSSTATEREQUEST")
  (make-package "DOBOT::GETALARMSSTATEREQUEST"))
(unless (find-package "DOBOT::GETALARMSSTATERESPONSE")
  (make-package "DOBOT::GETALARMSSTATERESPONSE"))

(in-package "ROS")





(defclass dobot::GetAlarmsStateRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetAlarmsStateRequest
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

(defclass dobot::GetAlarmsStateResponse
  :super ros::object
  :slots (_result _alarmsState ))

(defmethod dobot::GetAlarmsStateResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:alarmsState __alarmsState) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _alarmsState __alarmsState)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:alarmsState
   (&optional __alarmsState)
   (if __alarmsState (setq _alarmsState __alarmsState)) _alarmsState)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8[] _alarmsState
    (* 1    (length _alarmsState)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint8[] _alarmsState
     (write-long (length _alarmsState) s)
     (princ _alarmsState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _alarmsState
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _alarmsState (make-array n :element-type :char))
     (replace _alarmsState buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot::GetAlarmsState
  :super ros::object
  :slots ())

(setf (get dobot::GetAlarmsState :md5sum-) "471cc92db011a752d21793dfa031a894")
(setf (get dobot::GetAlarmsState :datatype-) "dobot/GetAlarmsState")
(setf (get dobot::GetAlarmsState :request) dobot::GetAlarmsStateRequest)
(setf (get dobot::GetAlarmsState :response) dobot::GetAlarmsStateResponse)

(defmethod dobot::GetAlarmsStateRequest
  (:response () (instance dobot::GetAlarmsStateResponse :init)))

(setf (get dobot::GetAlarmsStateRequest :md5sum-) "471cc92db011a752d21793dfa031a894")
(setf (get dobot::GetAlarmsStateRequest :datatype-) "dobot/GetAlarmsStateRequest")
(setf (get dobot::GetAlarmsStateRequest :definition-)
      "---
int32 result
uint8[] alarmsState

")

(setf (get dobot::GetAlarmsStateResponse :md5sum-) "471cc92db011a752d21793dfa031a894")
(setf (get dobot::GetAlarmsStateResponse :datatype-) "dobot/GetAlarmsStateResponse")
(setf (get dobot::GetAlarmsStateResponse :definition-)
      "---
int32 result
uint8[] alarmsState

")



(provide :dobot/GetAlarmsState "471cc92db011a752d21793dfa031a894")


