;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetDeviceName)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetDeviceName (find-package "DOBOT")))
(unless (find-package "DOBOT::GETDEVICENAME")
  (make-package "DOBOT::GETDEVICENAME"))
(unless (find-package "DOBOT::GETDEVICENAMEREQUEST")
  (make-package "DOBOT::GETDEVICENAMEREQUEST"))
(unless (find-package "DOBOT::GETDEVICENAMERESPONSE")
  (make-package "DOBOT::GETDEVICENAMERESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dobot::GetDeviceNameRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetDeviceNameRequest
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

(defclass dobot::GetDeviceNameResponse
  :super ros::object
  :slots (_result _deviceName ))

(defmethod dobot::GetDeviceNameResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:deviceName __deviceName) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _deviceName __deviceName)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:deviceName
   (&rest __deviceName)
   (if (keywordp (car __deviceName))
       (send* _deviceName __deviceName)
     (progn
       (if __deviceName (setq _deviceName (car __deviceName)))
       _deviceName)))
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; std_msgs/String _deviceName
    (send _deviceName :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; std_msgs/String _deviceName
       (send _deviceName :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _deviceName
     (send _deviceName :deserialize buf ptr-) (incf ptr- (send _deviceName :serialization-length))
   ;;
   self)
  )

(defclass dobot::GetDeviceName
  :super ros::object
  :slots ())

(setf (get dobot::GetDeviceName :md5sum-) "a703c880c9a21252b3f02bc128299ae6")
(setf (get dobot::GetDeviceName :datatype-) "dobot/GetDeviceName")
(setf (get dobot::GetDeviceName :request) dobot::GetDeviceNameRequest)
(setf (get dobot::GetDeviceName :response) dobot::GetDeviceNameResponse)

(defmethod dobot::GetDeviceNameRequest
  (:response () (instance dobot::GetDeviceNameResponse :init)))

(setf (get dobot::GetDeviceNameRequest :md5sum-) "a703c880c9a21252b3f02bc128299ae6")
(setf (get dobot::GetDeviceNameRequest :datatype-) "dobot/GetDeviceNameRequest")
(setf (get dobot::GetDeviceNameRequest :definition-)
      "---
int32 result
std_msgs/String deviceName


================================================================================
MSG: std_msgs/String
string data
")

(setf (get dobot::GetDeviceNameResponse :md5sum-) "a703c880c9a21252b3f02bc128299ae6")
(setf (get dobot::GetDeviceNameResponse :datatype-) "dobot/GetDeviceNameResponse")
(setf (get dobot::GetDeviceNameResponse :definition-)
      "---
int32 result
std_msgs/String deviceName


================================================================================
MSG: std_msgs/String
string data
")



(provide :dobot/GetDeviceName "a703c880c9a21252b3f02bc128299ae6")


