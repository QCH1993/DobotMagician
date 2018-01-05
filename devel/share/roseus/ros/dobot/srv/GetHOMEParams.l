;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetHOMEParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetHOMEParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETHOMEPARAMS")
  (make-package "DOBOT::GETHOMEPARAMS"))
(unless (find-package "DOBOT::GETHOMEPARAMSREQUEST")
  (make-package "DOBOT::GETHOMEPARAMSREQUEST"))
(unless (find-package "DOBOT::GETHOMEPARAMSRESPONSE")
  (make-package "DOBOT::GETHOMEPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetHOMEParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetHOMEParamsRequest
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

(defclass dobot::GetHOMEParamsResponse
  :super ros::object
  :slots (_result _x _y _z _r ))

(defmethod dobot::GetHOMEParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:r __r) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _r (float __r))
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
   ;;
   self)
  )

(defclass dobot::GetHOMEParams
  :super ros::object
  :slots ())

(setf (get dobot::GetHOMEParams :md5sum-) "faee91dfb5143975dd17cc14a8879155")
(setf (get dobot::GetHOMEParams :datatype-) "dobot/GetHOMEParams")
(setf (get dobot::GetHOMEParams :request) dobot::GetHOMEParamsRequest)
(setf (get dobot::GetHOMEParams :response) dobot::GetHOMEParamsResponse)

(defmethod dobot::GetHOMEParamsRequest
  (:response () (instance dobot::GetHOMEParamsResponse :init)))

(setf (get dobot::GetHOMEParamsRequest :md5sum-) "faee91dfb5143975dd17cc14a8879155")
(setf (get dobot::GetHOMEParamsRequest :datatype-) "dobot/GetHOMEParamsRequest")
(setf (get dobot::GetHOMEParamsRequest :definition-)
      "---
int32 result
float32 x
float32 y
float32 z
float32 r

")

(setf (get dobot::GetHOMEParamsResponse :md5sum-) "faee91dfb5143975dd17cc14a8879155")
(setf (get dobot::GetHOMEParamsResponse :datatype-) "dobot/GetHOMEParamsResponse")
(setf (get dobot::GetHOMEParamsResponse :definition-)
      "---
int32 result
float32 x
float32 y
float32 z
float32 r

")



(provide :dobot/GetHOMEParams "faee91dfb5143975dd17cc14a8879155")


