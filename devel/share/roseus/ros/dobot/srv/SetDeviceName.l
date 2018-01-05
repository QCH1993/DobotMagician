;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetDeviceName)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetDeviceName (find-package "DOBOT")))
(unless (find-package "DOBOT::SETDEVICENAME")
  (make-package "DOBOT::SETDEVICENAME"))
(unless (find-package "DOBOT::SETDEVICENAMEREQUEST")
  (make-package "DOBOT::SETDEVICENAMEREQUEST"))
(unless (find-package "DOBOT::SETDEVICENAMERESPONSE")
  (make-package "DOBOT::SETDEVICENAMERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass dobot::SetDeviceNameRequest
  :super ros::object
  :slots (_deviceName ))

(defmethod dobot::SetDeviceNameRequest
  (:init
   (&key
    ((:deviceName __deviceName) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _deviceName __deviceName)
   self)
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
    ;; std_msgs/String _deviceName
    (send _deviceName :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _deviceName
       (send _deviceName :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _deviceName
     (send _deviceName :deserialize buf ptr-) (incf ptr- (send _deviceName :serialization-length))
   ;;
   self)
  )

(defclass dobot::SetDeviceNameResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetDeviceNameResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetDeviceName
  :super ros::object
  :slots ())

(setf (get dobot::SetDeviceName :md5sum-) "1488f44288f7bbb72574bf0b686da4d4")
(setf (get dobot::SetDeviceName :datatype-) "dobot/SetDeviceName")
(setf (get dobot::SetDeviceName :request) dobot::SetDeviceNameRequest)
(setf (get dobot::SetDeviceName :response) dobot::SetDeviceNameResponse)

(defmethod dobot::SetDeviceNameRequest
  (:response () (instance dobot::SetDeviceNameResponse :init)))

(setf (get dobot::SetDeviceNameRequest :md5sum-) "1488f44288f7bbb72574bf0b686da4d4")
(setf (get dobot::SetDeviceNameRequest :datatype-) "dobot/SetDeviceNameRequest")
(setf (get dobot::SetDeviceNameRequest :definition-)
      "std_msgs/String deviceName

================================================================================
MSG: std_msgs/String
string data
---
int32 result

")

(setf (get dobot::SetDeviceNameResponse :md5sum-) "1488f44288f7bbb72574bf0b686da4d4")
(setf (get dobot::SetDeviceNameResponse :datatype-) "dobot/SetDeviceNameResponse")
(setf (get dobot::SetDeviceNameResponse :definition-)
      "std_msgs/String deviceName

================================================================================
MSG: std_msgs/String
string data
---
int32 result

")



(provide :dobot/SetDeviceName "1488f44288f7bbb72574bf0b686da4d4")


