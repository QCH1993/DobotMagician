;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetDeviceSN)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetDeviceSN (find-package "DOBOT")))
(unless (find-package "DOBOT::GETDEVICESN")
  (make-package "DOBOT::GETDEVICESN"))
(unless (find-package "DOBOT::GETDEVICESNREQUEST")
  (make-package "DOBOT::GETDEVICESNREQUEST"))
(unless (find-package "DOBOT::GETDEVICESNRESPONSE")
  (make-package "DOBOT::GETDEVICESNRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dobot::GetDeviceSNRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetDeviceSNRequest
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

(defclass dobot::GetDeviceSNResponse
  :super ros::object
  :slots (_result _deviceSN ))

(defmethod dobot::GetDeviceSNResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:deviceSN __deviceSN) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _deviceSN __deviceSN)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:deviceSN
   (&rest __deviceSN)
   (if (keywordp (car __deviceSN))
       (send* _deviceSN __deviceSN)
     (progn
       (if __deviceSN (setq _deviceSN (car __deviceSN)))
       _deviceSN)))
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; std_msgs/String _deviceSN
    (send _deviceSN :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; std_msgs/String _deviceSN
       (send _deviceSN :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _deviceSN
     (send _deviceSN :deserialize buf ptr-) (incf ptr- (send _deviceSN :serialization-length))
   ;;
   self)
  )

(defclass dobot::GetDeviceSN
  :super ros::object
  :slots ())

(setf (get dobot::GetDeviceSN :md5sum-) "e0f9486ebe760ac95403f1a902002a01")
(setf (get dobot::GetDeviceSN :datatype-) "dobot/GetDeviceSN")
(setf (get dobot::GetDeviceSN :request) dobot::GetDeviceSNRequest)
(setf (get dobot::GetDeviceSN :response) dobot::GetDeviceSNResponse)

(defmethod dobot::GetDeviceSNRequest
  (:response () (instance dobot::GetDeviceSNResponse :init)))

(setf (get dobot::GetDeviceSNRequest :md5sum-) "e0f9486ebe760ac95403f1a902002a01")
(setf (get dobot::GetDeviceSNRequest :datatype-) "dobot/GetDeviceSNRequest")
(setf (get dobot::GetDeviceSNRequest :definition-)
      "---
int32 result
std_msgs/String deviceSN


================================================================================
MSG: std_msgs/String
string data
")

(setf (get dobot::GetDeviceSNResponse :md5sum-) "e0f9486ebe760ac95403f1a902002a01")
(setf (get dobot::GetDeviceSNResponse :datatype-) "dobot/GetDeviceSNResponse")
(setf (get dobot::GetDeviceSNResponse :definition-)
      "---
int32 result
std_msgs/String deviceSN


================================================================================
MSG: std_msgs/String
string data
")



(provide :dobot/GetDeviceSN "e0f9486ebe760ac95403f1a902002a01")


