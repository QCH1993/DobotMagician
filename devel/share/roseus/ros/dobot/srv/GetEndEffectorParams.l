;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetEndEffectorParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetEndEffectorParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETENDEFFECTORPARAMS")
  (make-package "DOBOT::GETENDEFFECTORPARAMS"))
(unless (find-package "DOBOT::GETENDEFFECTORPARAMSREQUEST")
  (make-package "DOBOT::GETENDEFFECTORPARAMSREQUEST"))
(unless (find-package "DOBOT::GETENDEFFECTORPARAMSRESPONSE")
  (make-package "DOBOT::GETENDEFFECTORPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetEndEffectorParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetEndEffectorParamsRequest
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

(defclass dobot::GetEndEffectorParamsResponse
  :super ros::object
  :slots (_result _xBias _yBias _zBias ))

(defmethod dobot::GetEndEffectorParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:xBias __xBias) 0.0)
    ((:yBias __yBias) 0.0)
    ((:zBias __zBias) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _xBias (float __xBias))
   (setq _yBias (float __yBias))
   (setq _zBias (float __zBias))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:xBias
   (&optional __xBias)
   (if __xBias (setq _xBias __xBias)) _xBias)
  (:yBias
   (&optional __yBias)
   (if __yBias (setq _yBias __yBias)) _yBias)
  (:zBias
   (&optional __zBias)
   (if __zBias (setq _zBias __zBias)) _zBias)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _xBias
    4
    ;; float32 _yBias
    4
    ;; float32 _zBias
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _xBias
       (sys::poke _xBias (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yBias
       (sys::poke _yBias (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zBias
       (sys::poke _zBias (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _xBias
     (setq _xBias (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yBias
     (setq _yBias (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zBias
     (setq _zBias (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetEndEffectorParams
  :super ros::object
  :slots ())

(setf (get dobot::GetEndEffectorParams :md5sum-) "a07055f2964cf165e2fb447024254f9f")
(setf (get dobot::GetEndEffectorParams :datatype-) "dobot/GetEndEffectorParams")
(setf (get dobot::GetEndEffectorParams :request) dobot::GetEndEffectorParamsRequest)
(setf (get dobot::GetEndEffectorParams :response) dobot::GetEndEffectorParamsResponse)

(defmethod dobot::GetEndEffectorParamsRequest
  (:response () (instance dobot::GetEndEffectorParamsResponse :init)))

(setf (get dobot::GetEndEffectorParamsRequest :md5sum-) "a07055f2964cf165e2fb447024254f9f")
(setf (get dobot::GetEndEffectorParamsRequest :datatype-) "dobot/GetEndEffectorParamsRequest")
(setf (get dobot::GetEndEffectorParamsRequest :definition-)
      "---
int32 result
float32 xBias
float32 yBias
float32 zBias

")

(setf (get dobot::GetEndEffectorParamsResponse :md5sum-) "a07055f2964cf165e2fb447024254f9f")
(setf (get dobot::GetEndEffectorParamsResponse :datatype-) "dobot/GetEndEffectorParamsResponse")
(setf (get dobot::GetEndEffectorParamsResponse :definition-)
      "---
int32 result
float32 xBias
float32 yBias
float32 zBias

")



(provide :dobot/GetEndEffectorParams "a07055f2964cf165e2fb447024254f9f")


