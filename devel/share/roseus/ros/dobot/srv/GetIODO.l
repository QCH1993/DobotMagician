;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetIODO)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetIODO (find-package "DOBOT")))
(unless (find-package "DOBOT::GETIODO")
  (make-package "DOBOT::GETIODO"))
(unless (find-package "DOBOT::GETIODOREQUEST")
  (make-package "DOBOT::GETIODOREQUEST"))
(unless (find-package "DOBOT::GETIODORESPONSE")
  (make-package "DOBOT::GETIODORESPONSE"))

(in-package "ROS")





(defclass dobot::GetIODORequest
  :super ros::object
  :slots (_address ))

(defmethod dobot::GetIODORequest
  (:init
   (&key
    ((:address __address) 0)
    )
   (send-super :init)
   (setq _address (round __address))
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:serialization-length
   ()
   (+
    ;; uint8 _address
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _address
       (write-byte _address s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _address
     (setq _address (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetIODOResponse
  :super ros::object
  :slots (_result _level ))

(defmethod dobot::GetIODOResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _level (round __level))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8 _level
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint8 _level
       (write-byte _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetIODO
  :super ros::object
  :slots ())

(setf (get dobot::GetIODO :md5sum-) "658a016d9c03f31ccbdb869e836cf420")
(setf (get dobot::GetIODO :datatype-) "dobot/GetIODO")
(setf (get dobot::GetIODO :request) dobot::GetIODORequest)
(setf (get dobot::GetIODO :response) dobot::GetIODOResponse)

(defmethod dobot::GetIODORequest
  (:response () (instance dobot::GetIODOResponse :init)))

(setf (get dobot::GetIODORequest :md5sum-) "658a016d9c03f31ccbdb869e836cf420")
(setf (get dobot::GetIODORequest :datatype-) "dobot/GetIODORequest")
(setf (get dobot::GetIODORequest :definition-)
      "uint8 address
---
int32 result
uint8 level

")

(setf (get dobot::GetIODOResponse :md5sum-) "658a016d9c03f31ccbdb869e836cf420")
(setf (get dobot::GetIODOResponse :datatype-) "dobot/GetIODOResponse")
(setf (get dobot::GetIODOResponse :definition-)
      "uint8 address
---
int32 result
uint8 level

")



(provide :dobot/GetIODO "658a016d9c03f31ccbdb869e836cf420")


