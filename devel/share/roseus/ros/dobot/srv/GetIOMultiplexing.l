;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetIOMultiplexing)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetIOMultiplexing (find-package "DOBOT")))
(unless (find-package "DOBOT::GETIOMULTIPLEXING")
  (make-package "DOBOT::GETIOMULTIPLEXING"))
(unless (find-package "DOBOT::GETIOMULTIPLEXINGREQUEST")
  (make-package "DOBOT::GETIOMULTIPLEXINGREQUEST"))
(unless (find-package "DOBOT::GETIOMULTIPLEXINGRESPONSE")
  (make-package "DOBOT::GETIOMULTIPLEXINGRESPONSE"))

(in-package "ROS")





(defclass dobot::GetIOMultiplexingRequest
  :super ros::object
  :slots (_address ))

(defmethod dobot::GetIOMultiplexingRequest
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

(defclass dobot::GetIOMultiplexingResponse
  :super ros::object
  :slots (_result _multiplex ))

(defmethod dobot::GetIOMultiplexingResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:multiplex __multiplex) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _multiplex (round __multiplex))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:multiplex
   (&optional __multiplex)
   (if __multiplex (setq _multiplex __multiplex)) _multiplex)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8 _multiplex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint8 _multiplex
       (write-byte _multiplex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _multiplex
     (setq _multiplex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetIOMultiplexing
  :super ros::object
  :slots ())

(setf (get dobot::GetIOMultiplexing :md5sum-) "30a9ee7733d17c6beafe8b39fe97a95c")
(setf (get dobot::GetIOMultiplexing :datatype-) "dobot/GetIOMultiplexing")
(setf (get dobot::GetIOMultiplexing :request) dobot::GetIOMultiplexingRequest)
(setf (get dobot::GetIOMultiplexing :response) dobot::GetIOMultiplexingResponse)

(defmethod dobot::GetIOMultiplexingRequest
  (:response () (instance dobot::GetIOMultiplexingResponse :init)))

(setf (get dobot::GetIOMultiplexingRequest :md5sum-) "30a9ee7733d17c6beafe8b39fe97a95c")
(setf (get dobot::GetIOMultiplexingRequest :datatype-) "dobot/GetIOMultiplexingRequest")
(setf (get dobot::GetIOMultiplexingRequest :definition-)
      "uint8 address
---
int32 result
uint8 multiplex

")

(setf (get dobot::GetIOMultiplexingResponse :md5sum-) "30a9ee7733d17c6beafe8b39fe97a95c")
(setf (get dobot::GetIOMultiplexingResponse :datatype-) "dobot/GetIOMultiplexingResponse")
(setf (get dobot::GetIOMultiplexingResponse :definition-)
      "uint8 address
---
int32 result
uint8 multiplex

")



(provide :dobot/GetIOMultiplexing "30a9ee7733d17c6beafe8b39fe97a95c")


