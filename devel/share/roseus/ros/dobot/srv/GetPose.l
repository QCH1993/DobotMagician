;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetPose)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetPose (find-package "DOBOT")))
(unless (find-package "DOBOT::GETPOSE")
  (make-package "DOBOT::GETPOSE"))
(unless (find-package "DOBOT::GETPOSEREQUEST")
  (make-package "DOBOT::GETPOSEREQUEST"))
(unless (find-package "DOBOT::GETPOSERESPONSE")
  (make-package "DOBOT::GETPOSERESPONSE"))

(in-package "ROS")





(defclass dobot::GetPoseRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetPoseRequest
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

(defclass dobot::GetPoseResponse
  :super ros::object
  :slots (_result _x _y _z _r _jointAngle ))

(defmethod dobot::GetPoseResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:r __r) 0.0)
    ((:jointAngle __jointAngle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _r (float __r))
   (setq _jointAngle __jointAngle)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:jointAngle
   (&optional __jointAngle)
   (if __jointAngle (setq _jointAngle __jointAngle)) _jointAngle)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _r
    4
    ;; float32[] _jointAngle
    (* 4    (length _jointAngle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _jointAngle
     (write-long (length _jointAngle) s)
     (dotimes (i (length _jointAngle))
       (sys::poke (elt _jointAngle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _jointAngle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointAngle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointAngle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass dobot::GetPose
  :super ros::object
  :slots ())

(setf (get dobot::GetPose :md5sum-) "d4de75e47bb9a51cbb33e89d50edf04f")
(setf (get dobot::GetPose :datatype-) "dobot/GetPose")
(setf (get dobot::GetPose :request) dobot::GetPoseRequest)
(setf (get dobot::GetPose :response) dobot::GetPoseResponse)

(defmethod dobot::GetPoseRequest
  (:response () (instance dobot::GetPoseResponse :init)))

(setf (get dobot::GetPoseRequest :md5sum-) "d4de75e47bb9a51cbb33e89d50edf04f")
(setf (get dobot::GetPoseRequest :datatype-) "dobot/GetPoseRequest")
(setf (get dobot::GetPoseRequest :definition-)
      "---
int32 result
float32 x
float32 y
float32 z
float32 r
float32[] jointAngle

")

(setf (get dobot::GetPoseResponse :md5sum-) "d4de75e47bb9a51cbb33e89d50edf04f")
(setf (get dobot::GetPoseResponse :datatype-) "dobot/GetPoseResponse")
(setf (get dobot::GetPoseResponse :definition-)
      "---
int32 result
float32 x
float32 y
float32 z
float32 r
float32[] jointAngle

")



(provide :dobot/GetPose "d4de75e47bb9a51cbb33e89d50edf04f")


