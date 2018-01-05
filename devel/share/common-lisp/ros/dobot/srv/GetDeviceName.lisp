; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetDeviceName-request.msg.html

(cl:defclass <GetDeviceName-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDeviceName-request (<GetDeviceName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetDeviceName-request> is deprecated: use dobot-srv:GetDeviceName-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceName-request>) ostream)
  "Serializes a message object of type '<GetDeviceName-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceName-request>) istream)
  "Deserializes a message object of type '<GetDeviceName-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceName-request>)))
  "Returns string type for a service object of type '<GetDeviceName-request>"
  "dobot/GetDeviceNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceName-request)))
  "Returns string type for a service object of type 'GetDeviceName-request"
  "dobot/GetDeviceNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceName-request>)))
  "Returns md5sum for a message object of type '<GetDeviceName-request>"
  "a703c880c9a21252b3f02bc128299ae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceName-request)))
  "Returns md5sum for a message object of type 'GetDeviceName-request"
  "a703c880c9a21252b3f02bc128299ae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceName-request>)))
  "Returns full string definition for message of type '<GetDeviceName-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceName-request)))
  "Returns full string definition for message of type 'GetDeviceName-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceName-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceName-request
))
;//! \htmlinclude GetDeviceName-response.msg.html

(cl:defclass <GetDeviceName-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (deviceName
    :reader deviceName
    :initarg :deviceName
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass GetDeviceName-response (<GetDeviceName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetDeviceName-response> is deprecated: use dobot-srv:GetDeviceName-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetDeviceName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'deviceName-val :lambda-list '(m))
(cl:defmethod deviceName-val ((m <GetDeviceName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:deviceName-val is deprecated.  Use dobot-srv:deviceName instead.")
  (deviceName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceName-response>) ostream)
  "Serializes a message object of type '<GetDeviceName-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'deviceName) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceName-response>) istream)
  "Deserializes a message object of type '<GetDeviceName-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'deviceName) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceName-response>)))
  "Returns string type for a service object of type '<GetDeviceName-response>"
  "dobot/GetDeviceNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceName-response)))
  "Returns string type for a service object of type 'GetDeviceName-response"
  "dobot/GetDeviceNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceName-response>)))
  "Returns md5sum for a message object of type '<GetDeviceName-response>"
  "a703c880c9a21252b3f02bc128299ae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceName-response)))
  "Returns md5sum for a message object of type 'GetDeviceName-response"
  "a703c880c9a21252b3f02bc128299ae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceName-response>)))
  "Returns full string definition for message of type '<GetDeviceName-response>"
  (cl:format cl:nil "int32 result~%std_msgs/String deviceName~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceName-response)))
  "Returns full string definition for message of type 'GetDeviceName-response"
  (cl:format cl:nil "int32 result~%std_msgs/String deviceName~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceName-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'deviceName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceName-response
    (cl:cons ':result (result msg))
    (cl:cons ':deviceName (deviceName msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeviceName)))
  'GetDeviceName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeviceName)))
  'GetDeviceName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceName)))
  "Returns string type for a service object of type '<GetDeviceName>"
  "dobot/GetDeviceName")