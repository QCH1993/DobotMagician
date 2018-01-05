;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetIOADC)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetIOADC (find-package "DOBOT")))
(unless (find-package "DOBOT::GETIOADC")
  (make-package "DOBOT::GETIOADC"))
(unless (find-package "DOBOT::GETIOADCREQUEST")
  (make-package "DOBOT::GETIOADCREQUEST"))
(unless (find-package "DOBOT::GETIOADCRESPONSE")
  (make-package "DOBOT::GETIOADCRESPONSE"))

(in-package "ROS")





(defclass dobot::GetIOADCRequest
  :super ros::object
  :slots (_address ))

(defmethod dobot::GetIOADCRequest
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

(defclass dobot::GetIOADCResponse
  :super ros::object
  :slots (_result _value ))

(defmethod dobot::GetIOADCResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _value (round __value))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dobot::GetIOADC
  :super ros::object
  :slots ())

(setf (get dobot::GetIOADC :md5sum-) "e7fd886e51f1d338955db5ffe38e27b3")
(setf (get dobot::GetIOADC :datatype-) "dobot/GetIOADC")
(setf (get dobot::GetIOADC :request) dobot::GetIOADCRequest)
(setf (get dobot::GetIOADC :response) dobot::GetIOADCResponse)

(defmethod dobot::GetIOADCRequest
  (:response () (instance dobot::GetIOADCResponse :init)))

(setf (get dobot::GetIOADCRequest :md5sum-) "e7fd886e51f1d338955db5ffe38e27b3")
(setf (get dobot::GetIOADCRequest :datatype-) "dobot/GetIOADCRequest")
(setf (get dobot::GetIOADCRequest :definition-)
      "uint8 address
---
int32 result
uint16 value

")

(setf (get dobot::GetIOADCResponse :md5sum-) "e7fd886e51f1d338955db5ffe38e27b3")
(setf (get dobot::GetIOADCResponse :datatype-) "dobot/GetIOADCResponse")
(setf (get dobot::GetIOADCResponse :definition-)
      "uint8 address
---
int32 result
uint16 value

")



(provide :dobot/GetIOADC "e7fd886e51f1d338955db5ffe38e27b3")


