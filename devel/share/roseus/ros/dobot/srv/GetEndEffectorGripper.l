;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetEndEffectorGripper)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetEndEffectorGripper (find-package "DOBOT")))
(unless (find-package "DOBOT::GETENDEFFECTORGRIPPER")
  (make-package "DOBOT::GETENDEFFECTORGRIPPER"))
(unless (find-package "DOBOT::GETENDEFFECTORGRIPPERREQUEST")
  (make-package "DOBOT::GETENDEFFECTORGRIPPERREQUEST"))
(unless (find-package "DOBOT::GETENDEFFECTORGRIPPERRESPONSE")
  (make-package "DOBOT::GETENDEFFECTORGRIPPERRESPONSE"))

(in-package "ROS")





(defclass dobot::GetEndEffectorGripperRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetEndEffectorGripperRequest
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

(defclass dobot::GetEndEffectorGripperResponse
  :super ros::object
  :slots (_result _enableCtrl _grip ))

(defmethod dobot::GetEndEffectorGripperResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:enableCtrl __enableCtrl) 0)
    ((:grip __grip) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _enableCtrl (round __enableCtrl))
   (setq _grip (round __grip))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:enableCtrl
   (&optional __enableCtrl)
   (if __enableCtrl (setq _enableCtrl __enableCtrl)) _enableCtrl)
  (:grip
   (&optional __grip)
   (if __grip (setq _grip __grip)) _grip)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8 _enableCtrl
    1
    ;; uint8 _grip
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
     ;; uint8 _grip
       (write-byte _grip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _enableCtrl
     (setq _enableCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _grip
     (setq _grip (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetEndEffectorGripper
  :super ros::object
  :slots ())

(setf (get dobot::GetEndEffectorGripper :md5sum-) "4185902cfc52c9751c7305887881349c")
(setf (get dobot::GetEndEffectorGripper :datatype-) "dobot/GetEndEffectorGripper")
(setf (get dobot::GetEndEffectorGripper :request) dobot::GetEndEffectorGripperRequest)
(setf (get dobot::GetEndEffectorGripper :response) dobot::GetEndEffectorGripperResponse)

(defmethod dobot::GetEndEffectorGripperRequest
  (:response () (instance dobot::GetEndEffectorGripperResponse :init)))

(setf (get dobot::GetEndEffectorGripperRequest :md5sum-) "4185902cfc52c9751c7305887881349c")
(setf (get dobot::GetEndEffectorGripperRequest :datatype-) "dobot/GetEndEffectorGripperRequest")
(setf (get dobot::GetEndEffectorGripperRequest :definition-)
      "---
int32 result
uint8 enableCtrl
uint8 grip

")

(setf (get dobot::GetEndEffectorGripperResponse :md5sum-) "4185902cfc52c9751c7305887881349c")
(setf (get dobot::GetEndEffectorGripperResponse :datatype-) "dobot/GetEndEffectorGripperResponse")
(setf (get dobot::GetEndEffectorGripperResponse :definition-)
      "---
int32 result
uint8 enableCtrl
uint8 grip

")



(provide :dobot/GetEndEffectorGripper "4185902cfc52c9751c7305887881349c")


