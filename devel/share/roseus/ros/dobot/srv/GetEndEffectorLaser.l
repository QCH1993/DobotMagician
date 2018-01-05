;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetEndEffectorLaser)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetEndEffectorLaser (find-package "DOBOT")))
(unless (find-package "DOBOT::GETENDEFFECTORLASER")
  (make-package "DOBOT::GETENDEFFECTORLASER"))
(unless (find-package "DOBOT::GETENDEFFECTORLASERREQUEST")
  (make-package "DOBOT::GETENDEFFECTORLASERREQUEST"))
(unless (find-package "DOBOT::GETENDEFFECTORLASERRESPONSE")
  (make-package "DOBOT::GETENDEFFECTORLASERRESPONSE"))

(in-package "ROS")





(defclass dobot::GetEndEffectorLaserRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetEndEffectorLaserRequest
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

(defclass dobot::GetEndEffectorLaserResponse
  :super ros::object
  :slots (_result _enableCtrl _on ))

(defmethod dobot::GetEndEffectorLaserResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:enableCtrl __enableCtrl) 0)
    ((:on __on) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _enableCtrl (round __enableCtrl))
   (setq _on (round __on))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:enableCtrl
   (&optional __enableCtrl)
   (if __enableCtrl (setq _enableCtrl __enableCtrl)) _enableCtrl)
  (:on
   (&optional __on)
   (if __on (setq _on __on)) _on)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8 _enableCtrl
    1
    ;; uint8 _on
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint8 _enableCtrl
       (write-byte _enableCtrl s)
     ;; uint8 _on
       (write-byte _on s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _enableCtrl
     (setq _enableCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _on
     (setq _on (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetEndEffectorLaser
  :super ros::object
  :slots ())

(setf (get dobot::GetEndEffectorLaser :md5sum-) "a8f296ec06b91031fd6d56c18b2ea1e9")
(setf (get dobot::GetEndEffectorLaser :datatype-) "dobot/GetEndEffectorLaser")
(setf (get dobot::GetEndEffectorLaser :request) dobot::GetEndEffectorLaserRequest)
(setf (get dobot::GetEndEffectorLaser :response) dobot::GetEndEffectorLaserResponse)

(defmethod dobot::GetEndEffectorLaserRequest
  (:response () (instance dobot::GetEndEffectorLaserResponse :init)))

(setf (get dobot::GetEndEffectorLaserRequest :md5sum-) "a8f296ec06b91031fd6d56c18b2ea1e9")
(setf (get dobot::GetEndEffectorLaserRequest :datatype-) "dobot/GetEndEffectorLaserRequest")
(setf (get dobot::GetEndEffectorLaserRequest :definition-)
      "---
int32 result
uint8 enableCtrl
uint8 on

")

(setf (get dobot::GetEndEffectorLaserResponse :md5sum-) "a8f296ec06b91031fd6d56c18b2ea1e9")
(setf (get dobot::GetEndEffectorLaserResponse :datatype-) "dobot/GetEndEffectorLaserResponse")
(setf (get dobot::GetEndEffectorLaserResponse :definition-)
      "---
int32 result
uint8 enableCtrl
uint8 on

")



(provide :dobot/GetEndEffectorLaser "a8f296ec06b91031fd6d56c18b2ea1e9")


