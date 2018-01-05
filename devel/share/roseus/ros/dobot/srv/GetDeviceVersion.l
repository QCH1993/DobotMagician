;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetDeviceVersion)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetDeviceVersion (find-package "DOBOT")))
(unless (find-package "DOBOT::GETDEVICEVERSION")
  (make-package "DOBOT::GETDEVICEVERSION"))
(unless (find-package "DOBOT::GETDEVICEVERSIONREQUEST")
  (make-package "DOBOT::GETDEVICEVERSIONREQUEST"))
(unless (find-package "DOBOT::GETDEVICEVERSIONRESPONSE")
  (make-package "DOBOT::GETDEVICEVERSIONRESPONSE"))

(in-package "ROS")





(defclass dobot::GetDeviceVersionRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetDeviceVersionRequest
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

(defclass dobot::GetDeviceVersionResponse
  :super ros::object
  :slots (_result _majorVersion _minorVersion _revision ))

(defmethod dobot::GetDeviceVersionResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:majorVersion __majorVersion) 0)
    ((:minorVersion __minorVersion) 0)
    ((:revision __revision) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _majorVersion (round __majorVersion))
   (setq _minorVersion (round __minorVersion))
   (setq _revision (round __revision))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:majorVersion
   (&optional __majorVersion)
   (if __majorVersion (setq _majorVersion __majorVersion)) _majorVersion)
  (:minorVersion
   (&optional __minorVersion)
   (if __minorVersion (setq _minorVersion __minorVersion)) _minorVersion)
  (:revision
   (&optional __revision)
   (if __revision (setq _revision __revision)) _revision)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8 _majorVersion
    1
    ;; uint8 _minorVersion
    1
    ;; uint8 _revision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint8 _majorVersion
       (write-byte _majorVersion s)
     ;; uint8 _minorVersion
       (write-byte _minorVersion s)
     ;; uint8 _revision
       (write-byte _revision s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _majorVersion
     (setq _majorVersion (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minorVersion
     (setq _minorVersion (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _revision
     (setq _revision (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetDeviceVersion
  :super ros::object
  :slots ())

(setf (get dobot::GetDeviceVersion :md5sum-) "c3c3f825efd26e7d40dd5c75956d6244")
(setf (get dobot::GetDeviceVersion :datatype-) "dobot/GetDeviceVersion")
(setf (get dobot::GetDeviceVersion :request) dobot::GetDeviceVersionRequest)
(setf (get dobot::GetDeviceVersion :response) dobot::GetDeviceVersionResponse)

(defmethod dobot::GetDeviceVersionRequest
  (:response () (instance dobot::GetDeviceVersionResponse :init)))

(setf (get dobot::GetDeviceVersionRequest :md5sum-) "c3c3f825efd26e7d40dd5c75956d6244")
(setf (get dobot::GetDeviceVersionRequest :datatype-) "dobot/GetDeviceVersionRequest")
(setf (get dobot::GetDeviceVersionRequest :definition-)
      "---
int32 result
uint8 majorVersion
uint8 minorVersion
uint8 revision

")

(setf (get dobot::GetDeviceVersionResponse :md5sum-) "c3c3f825efd26e7d40dd5c75956d6244")
(setf (get dobot::GetDeviceVersionResponse :datatype-) "dobot/GetDeviceVersionResponse")
(setf (get dobot::GetDeviceVersionResponse :definition-)
      "---
int32 result
uint8 majorVersion
uint8 minorVersion
uint8 revision

")



(provide :dobot/GetDeviceVersion "c3c3f825efd26e7d40dd5c75956d6244")


