;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetARCParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetARCParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETARCPARAMS")
  (make-package "DOBOT::GETARCPARAMS"))
(unless (find-package "DOBOT::GETARCPARAMSREQUEST")
  (make-package "DOBOT::GETARCPARAMSREQUEST"))
(unless (find-package "DOBOT::GETARCPARAMSRESPONSE")
  (make-package "DOBOT::GETARCPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetARCParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetARCParamsRequest
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

(defclass dobot::GetARCParamsResponse
  :super ros::object
  :slots (_result _xyzVelocity _rVelocity _xyzAcceleration _rAcceleration ))

(defmethod dobot::GetARCParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:xyzVelocity __xyzVelocity) 0.0)
    ((:rVelocity __rVelocity) 0.0)
    ((:xyzAcceleration __xyzAcceleration) 0.0)
    ((:rAcceleration __rAcceleration) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _xyzVelocity (float __xyzVelocity))
   (setq _rVelocity (float __rVelocity))
   (setq _xyzAcceleration (float __xyzAcceleration))
   (setq _rAcceleration (float __rAcceleration))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:xyzVelocity
   (&optional __xyzVelocity)
   (if __xyzVelocity (setq _xyzVelocity __xyzVelocity)) _xyzVelocity)
  (:rVelocity
   (&optional __rVelocity)
   (if __rVelocity (setq _rVelocity __rVelocity)) _rVelocity)
  (:xyzAcceleration
   (&optional __xyzAcceleration)
   (if __xyzAcceleration (setq _xyzAcceleration __xyzAcceleration)) _xyzAcceleration)
  (:rAcceleration
   (&optional __rAcceleration)
   (if __rAcceleration (setq _rAcceleration __rAcceleration)) _rAcceleration)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _xyzVelocity
    4
    ;; float32 _rVelocity
    4
    ;; float32 _xyzAcceleration
    4
    ;; float32 _rAcceleration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _xyzVelocity
       (sys::poke _xyzVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rVelocity
       (sys::poke _rVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xyzAcceleration
       (sys::poke _xyzAcceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rAcceleration
       (sys::poke _rAcceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _xyzVelocity
     (setq _xyzVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rVelocity
     (setq _rVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xyzAcceleration
     (setq _xyzAcceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rAcceleration
     (setq _rAcceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetARCParams
  :super ros::object
  :slots ())

(setf (get dobot::GetARCParams :md5sum-) "886db9a7d126004f299ba6b6878cb966")
(setf (get dobot::GetARCParams :datatype-) "dobot/GetARCParams")
(setf (get dobot::GetARCParams :request) dobot::GetARCParamsRequest)
(setf (get dobot::GetARCParams :response) dobot::GetARCParamsResponse)

(defmethod dobot::GetARCParamsRequest
  (:response () (instance dobot::GetARCParamsResponse :init)))

(setf (get dobot::GetARCParamsRequest :md5sum-) "886db9a7d126004f299ba6b6878cb966")
(setf (get dobot::GetARCParamsRequest :datatype-) "dobot/GetARCParamsRequest")
(setf (get dobot::GetARCParamsRequest :definition-)
      "---
int32 result
float32 xyzVelocity
float32 rVelocity
float32 xyzAcceleration
float32 rAcceleration

")

(setf (get dobot::GetARCParamsResponse :md5sum-) "886db9a7d126004f299ba6b6878cb966")
(setf (get dobot::GetARCParamsResponse :datatype-) "dobot/GetARCParamsResponse")
(setf (get dobot::GetARCParamsResponse :definition-)
      "---
int32 result
float32 xyzVelocity
float32 rVelocity
float32 xyzAcceleration
float32 rAcceleration

")



(provide :dobot/GetARCParams "886db9a7d126004f299ba6b6878cb966")


