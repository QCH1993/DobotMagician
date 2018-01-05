;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetJOGJointParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetJOGJointParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETJOGJOINTPARAMS")
  (make-package "DOBOT::GETJOGJOINTPARAMS"))
(unless (find-package "DOBOT::GETJOGJOINTPARAMSREQUEST")
  (make-package "DOBOT::GETJOGJOINTPARAMSREQUEST"))
(unless (find-package "DOBOT::GETJOGJOINTPARAMSRESPONSE")
  (make-package "DOBOT::GETJOGJOINTPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetJOGJointParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetJOGJointParamsRequest
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

(defclass dobot::GetJOGJointParamsResponse
  :super ros::object
  :slots (_result _velocity _acceleration ))

(defmethod dobot::GetJOGJointParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration __acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32[] _velocity
    (* 4    (length _velocity)) 4
    ;; float32[] _acceleration
    (* 4    (length _acceleration)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acceleration
     (write-long (length _acceleration) s)
     (dotimes (i (length _acceleration))
       (sys::poke (elt _acceleration i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass dobot::GetJOGJointParams
  :super ros::object
  :slots ())

(setf (get dobot::GetJOGJointParams :md5sum-) "46bf5bf78db0edaa99dd346e0307937e")
(setf (get dobot::GetJOGJointParams :datatype-) "dobot/GetJOGJointParams")
(setf (get dobot::GetJOGJointParams :request) dobot::GetJOGJointParamsRequest)
(setf (get dobot::GetJOGJointParams :response) dobot::GetJOGJointParamsResponse)

(defmethod dobot::GetJOGJointParamsRequest
  (:response () (instance dobot::GetJOGJointParamsResponse :init)))

(setf (get dobot::GetJOGJointParamsRequest :md5sum-) "46bf5bf78db0edaa99dd346e0307937e")
(setf (get dobot::GetJOGJointParamsRequest :datatype-) "dobot/GetJOGJointParamsRequest")
(setf (get dobot::GetJOGJointParamsRequest :definition-)
      "---
int32 result
float32[] velocity
float32[] acceleration

")

(setf (get dobot::GetJOGJointParamsResponse :md5sum-) "46bf5bf78db0edaa99dd346e0307937e")
(setf (get dobot::GetJOGJointParamsResponse :datatype-) "dobot/GetJOGJointParamsResponse")
(setf (get dobot::GetJOGJointParamsResponse :definition-)
      "---
int32 result
float32[] velocity
float32[] acceleration

")



(provide :dobot/GetJOGJointParams "46bf5bf78db0edaa99dd346e0307937e")


