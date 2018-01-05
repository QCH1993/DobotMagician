;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetPTPJumpParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetPTPJumpParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETPTPJUMPPARAMS")
  (make-package "DOBOT::GETPTPJUMPPARAMS"))
(unless (find-package "DOBOT::GETPTPJUMPPARAMSREQUEST")
  (make-package "DOBOT::GETPTPJUMPPARAMSREQUEST"))
(unless (find-package "DOBOT::GETPTPJUMPPARAMSRESPONSE")
  (make-package "DOBOT::GETPTPJUMPPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetPTPJumpParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetPTPJumpParamsRequest
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

(defclass dobot::GetPTPJumpParamsResponse
  :super ros::object
  :slots (_result _jumpHeight _zLimit ))

(defmethod dobot::GetPTPJumpParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:jumpHeight __jumpHeight) 0.0)
    ((:zLimit __zLimit) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _jumpHeight (float __jumpHeight))
   (setq _zLimit (float __zLimit))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:jumpHeight
   (&optional __jumpHeight)
   (if __jumpHeight (setq _jumpHeight __jumpHeight)) _jumpHeight)
  (:zLimit
   (&optional __zLimit)
   (if __zLimit (setq _zLimit __zLimit)) _zLimit)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _jumpHeight
    4
    ;; float32 _zLimit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _jumpHeight
       (sys::poke _jumpHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zLimit
       (sys::poke _zLimit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _jumpHeight
     (setq _jumpHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zLimit
     (setq _zLimit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetPTPJumpParams
  :super ros::object
  :slots ())

(setf (get dobot::GetPTPJumpParams :md5sum-) "c789ca108051f9c81e48ec0ed44d3ab7")
(setf (get dobot::GetPTPJumpParams :datatype-) "dobot/GetPTPJumpParams")
(setf (get dobot::GetPTPJumpParams :request) dobot::GetPTPJumpParamsRequest)
(setf (get dobot::GetPTPJumpParams :response) dobot::GetPTPJumpParamsResponse)

(defmethod dobot::GetPTPJumpParamsRequest
  (:response () (instance dobot::GetPTPJumpParamsResponse :init)))

(setf (get dobot::GetPTPJumpParamsRequest :md5sum-) "c789ca108051f9c81e48ec0ed44d3ab7")
(setf (get dobot::GetPTPJumpParamsRequest :datatype-) "dobot/GetPTPJumpParamsRequest")
(setf (get dobot::GetPTPJumpParamsRequest :definition-)
      "---
int32 result
float32 jumpHeight
float32 zLimit

")

(setf (get dobot::GetPTPJumpParamsResponse :md5sum-) "c789ca108051f9c81e48ec0ed44d3ab7")
(setf (get dobot::GetPTPJumpParamsResponse :datatype-) "dobot/GetPTPJumpParamsResponse")
(setf (get dobot::GetPTPJumpParamsResponse :definition-)
      "---
int32 result
float32 jumpHeight
float32 zLimit

")



(provide :dobot/GetPTPJumpParams "c789ca108051f9c81e48ec0ed44d3ab7")


