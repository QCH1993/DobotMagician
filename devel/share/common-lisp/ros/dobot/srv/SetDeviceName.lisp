; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetDeviceName-request.msg.html

(cl:defclass <SetDeviceName-request> (roslisp-msg-protocol:ros-message)
  ((deviceName
    :reader deviceName
    :initarg :deviceName
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass SetDeviceName-request (<SetDeviceName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDeviceName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDeviceName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetDeviceName-request> is deprecated: use dobot-srv:SetDeviceName-request instead.")))

(cl:ensure-generic-function 'deviceName-val :lambda-list '(m))
(cl:defmethod deviceName-val ((m <SetDeviceName-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:deviceName-val is deprecated.  Use dobot-srv:deviceName instead.")
  (deviceName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDeviceName-request>) ostream)
  "Serializes a message object of type '<SetDeviceName-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'deviceName) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDeviceName-request>) istream)
  "Deserializes a message object of type '<SetDeviceName-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'deviceName) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDeviceName-request>)))
  "Returns string type for a service object of type '<SetDeviceName-request>"
  "dobot/SetDeviceNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDeviceName-request)))
  "Returns string type for a service object of type 'SetDeviceName-request"
  "dobot/SetDeviceNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDeviceName-request>)))
  "Returns md5sum for a message object of type '<SetDeviceName-request>"
  "1488f44288f7bbb72574bf0b686da4d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDeviceName-request)))
  "Returns md5sum for a message object of type 'SetDeviceName-request"
  "1488f44288f7bbb72574bf0b686da4d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDeviceName-request>)))
  "Returns full string definition for message of type '<SetDeviceName-request>"
  (cl:format cl:nil "std_msgs/String deviceName~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDeviceName-request)))
  "Returns full string definition for message of type 'SetDeviceName-request"
  (cl:format cl:nil "std_msgs/String deviceName~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDeviceName-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'deviceName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDeviceName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDeviceName-request
    (cl:cons ':deviceName (deviceName msg))
))
;//! \htmlinclude SetDeviceName-response.msg.html

(cl:defclass <SetDeviceName-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetDeviceName-response (<SetDeviceName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDeviceName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDeviceName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetDeviceName-response> is deprecated: use dobot-srv:SetDeviceName-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetDeviceName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDeviceName-response>) ostream)
  "Serializes a message object of type '<SetDeviceName-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDeviceName-response>) istream)
  "Deserializes a message object of type '<SetDeviceName-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDeviceName-response>)))
  "Returns string type for a service object of type '<SetDeviceName-response>"
  "dobot/SetDeviceNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDeviceName-response)))
  "Returns string type for a service object of type 'SetDeviceName-response"
  "dobot/SetDeviceNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDeviceName-response>)))
  "Returns md5sum for a message object of type '<SetDeviceName-response>"
  "1488f44288f7bbb72574bf0b686da4d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDeviceName-response)))
  "Returns md5sum for a message object of type 'SetDeviceName-response"
  "1488f44288f7bbb72574bf0b686da4d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDeviceName-response>)))
  "Returns full string definition for message of type '<SetDeviceName-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDeviceName-response)))
  "Returns full string definition for message of type 'SetDeviceName-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDeviceName-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDeviceName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDeviceName-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDeviceName)))
  'SetDeviceName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDeviceName)))
  'SetDeviceName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDeviceName)))
  "Returns string type for a service object of type '<SetDeviceName>"
  "dobot/SetDeviceName")