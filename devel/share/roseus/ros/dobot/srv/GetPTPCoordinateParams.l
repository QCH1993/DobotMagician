;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetPTPCoordinateParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetPTPCoordinateParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETPTPCOORDINATEPARAMS")
  (make-package "DOBOT::GETPTPCOORDINATEPARAMS"))
(unless (find-package "DOBOT::GETPTPCOORDINATEPARAMSREQUEST")
  (make-package "DOBOT::GETPTPCOORDINATEPARAMSREQUEST"))
(unless (find-package "DOBOT::GETPTPCOORDINATEPARAMSRESPONSE")
  (make-package "DOBOT::GETPTPCOORDINATEPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetPTPCoordinateParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetPTPCoordinateParamsRequest
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

(defclass dobot::GetPTPCoordinateParamsResponse
  :super ros::object
  :slots (_result _xyzVelocity _rVelocity _xyzAcceleration _rAcceleration ))

(defmethod dobot::GetPTPCoordinateParamsResponse
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

(defclass dobot::GetPTPCoordinateParams
  :super ros::object
  :slots ())

(setf (get dobot::GetPTPCoordinateParams :md5sum-) "886db9a7d126004f299ba6b6878cb966")
(setf (get dobot::GetPTPCoordinateParams :datatype-) "dobot/GetPTPCoordinateParams")
(setf (get dobot::GetPTPCoordinateParams :request) dobot::GetPTPCoordinateParamsRequest)
(setf (get dobot::GetPTPCoordinateParams :response) dobot::GetPTPCoordinateParamsResponse)

(defmethod dobot::GetPTPCoordinateParamsRequest
  (:response () (instance dobot::GetPTPCoordinateParamsResponse :init)))

(setf (get dobot::GetPTPCoordinateParamsRequest :md5sum-) "886db9a7d126004f299ba6b6878cb966")
(setf (get dobot::GetPTPCoordinateParamsRequest :datatype-) "dobot/GetPTPCoordinateParamsRequest")
(setf (get dobot::GetPTPCoordinateParamsRequest :definition-)
      "---
int32 result
float32 xyzVelocity
float32 rVelocity
float32 xyzAcceleration
float32 rAcceleration

")

(setf (get dobot::GetPTPCoordinateParamsResponse :md5sum-) "886db9a7d126004f299ba6b6878cb966")
(setf (get dobot::GetPTPCoordinateParamsResponse :datatype-) "dobot/GetPTPCoordinateParamsResponse")
(setf (get dobot::GetPTPCoordinateParamsResponse :definition-)
      "---
int32 result
float32 xyzVelocity
float32 rVelocity
float32 xyzAcceleration
float32 rAcceleration

")



(provide :dobot/GetPTPCoordinateParams "886db9a7d126004f299ba6b6878cb966")


