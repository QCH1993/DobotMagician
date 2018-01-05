;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetIODI)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetIODI (find-package "DOBOT")))
(unless (find-package "DOBOT::GETIODI")
  (make-package "DOBOT::GETIODI"))
(unless (find-package "DOBOT::GETIODIREQUEST")
  (make-package "DOBOT::GETIODIREQUEST"))
(unless (find-package "DOBOT::GETIODIRESPONSE")
  (make-package "DOBOT::GETIODIRESPONSE"))

(in-package "ROS")





(defclass dobot::GetIODIRequest
  :super ros::object
  :slots (_address ))

(defmethod dobot::GetIODIRequest
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

(defclass dobot::GetIODIResponse
  :super ros::object
  :slots (_result _level ))

(defmethod dobot::GetIODIResponse
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

(defclass dobot::GetIODI
  :super ros::object
  :slots ())

(setf (get dobot::GetIODI :md5sum-) "658a016d9c03f31ccbdb869e836cf420")
(setf (get dobot::GetIODI :datatype-) "dobot/GetIODI")
(setf (get dobot::GetIODI :request) dobot::GetIODIRequest)
(setf (get dobot::GetIODI :response) dobot::GetIODIResponse)

(defmethod dobot::GetIODIRequest
  (:response () (instance dobot::GetIODIResponse :init)))

(setf (get dobot::GetIODIRequest :md5sum-) "658a016d9c03f31ccbdb869e836cf420")
(setf (get dobot::GetIODIRequest :datatype-) "dobot/GetIODIRequest")
(setf (get dobot::GetIODIRequest :definition-)
      "uint8 address
---
int32 result
uint8 level

")

(setf (get dobot::GetIODIResponse :md5sum-) "658a016d9c03f31ccbdb869e836cf420")
(setf (get dobot::GetIODIResponse :datatype-) "dobot/GetIODIResponse")
(setf (get dobot::GetIODIResponse :definition-)
      "uint8 address
---
int32 result
uint8 level

")



(provide :dobot/GetIODI "658a016d9c03f31ccbdb869e836cf420")


