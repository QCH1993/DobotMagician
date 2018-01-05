;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetIOPWM)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetIOPWM (find-package "DOBOT")))
(unless (find-package "DOBOT::GETIOPWM")
  (make-package "DOBOT::GETIOPWM"))
(unless (find-package "DOBOT::GETIOPWMREQUEST")
  (make-package "DOBOT::GETIOPWMREQUEST"))
(unless (find-package "DOBOT::GETIOPWMRESPONSE")
  (make-package "DOBOT::GETIOPWMRESPONSE"))

(in-package "ROS")





(defclass dobot::GetIOPWMRequest
  :super ros::object
  :slots (_address ))

(defmethod dobot::GetIOPWMRequest
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

(defclass dobot::GetIOPWMResponse
  :super ros::object
  :slots (_result _frequency _dutyCycle ))

(defmethod dobot::GetIOPWMResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:frequency __frequency) 0.0)
    ((:dutyCycle __dutyCycle) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _frequency (float __frequency))
   (setq _dutyCycle (float __dutyCycle))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:dutyCycle
   (&optional __dutyCycle)
   (if __dutyCycle (setq _dutyCycle __dutyCycle)) _dutyCycle)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _frequency
    4
    ;; float32 _dutyCycle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dutyCycle
       (sys::poke _dutyCycle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dutyCycle
     (setq _dutyCycle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetIOPWM
  :super ros::object
  :slots ())

(setf (get dobot::GetIOPWM :md5sum-) "e74ebc842c028d734a6d61feb93c5a53")
(setf (get dobot::GetIOPWM :datatype-) "dobot/GetIOPWM")
(setf (get dobot::GetIOPWM :request) dobot::GetIOPWMRequest)
(setf (get dobot::GetIOPWM :response) dobot::GetIOPWMResponse)

(defmethod dobot::GetIOPWMRequest
  (:response () (instance dobot::GetIOPWMResponse :init)))

(setf (get dobot::GetIOPWMRequest :md5sum-) "e74ebc842c028d734a6d61feb93c5a53")
(setf (get dobot::GetIOPWMRequest :datatype-) "dobot/GetIOPWMRequest")
(setf (get dobot::GetIOPWMRequest :definition-)
      "uint8 address
---
int32 result
float32 frequency
float32 dutyCycle

")

(setf (get dobot::GetIOPWMResponse :md5sum-) "e74ebc842c028d734a6d61feb93c5a53")
(setf (get dobot::GetIOPWMResponse :datatype-) "dobot/GetIOPWMResponse")
(setf (get dobot::GetIOPWMResponse :definition-)
      "uint8 address
---
int32 result
float32 frequency
float32 dutyCycle

")



(provide :dobot/GetIOPWM "e74ebc842c028d734a6d61feb93c5a53")


