; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetDeviceSN-request.msg.html

(cl:defclass <GetDeviceSN-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDeviceSN-request (<GetDeviceSN-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceSN-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceSN-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetDeviceSN-request> is deprecated: use dobot-srv:GetDeviceSN-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceSN-request>) ostream)
  "Serializes a message object of type '<GetDeviceSN-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceSN-request>) istream)
  "Deserializes a message object of type '<GetDeviceSN-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceSN-request>)))
  "Returns string type for a service object of type '<GetDeviceSN-request>"
  "dobot/GetDeviceSNRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceSN-request)))
  "Returns string type for a service object of type 'GetDeviceSN-request"
  "dobot/GetDeviceSNRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceSN-request>)))
  "Returns md5sum for a message object of type '<GetDeviceSN-request>"
  "e0f9486ebe760ac95403f1a902002a01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceSN-request)))
  "Returns md5sum for a message object of type 'GetDeviceSN-request"
  "e0f9486ebe760ac95403f1a902002a01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceSN-request>)))
  "Returns full string definition for message of type '<GetDeviceSN-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceSN-request)))
  "Returns full string definition for message of type 'GetDeviceSN-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceSN-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceSN-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceSN-request
))
;//! \htmlinclude GetDeviceSN-response.msg.html

(cl:defclass <GetDeviceSN-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (deviceSN
    :reader deviceSN
    :initarg :deviceSN
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass GetDeviceSN-response (<GetDeviceSN-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceSN-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceSN-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetDeviceSN-response> is deprecated: use dobot-srv:GetDeviceSN-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetDeviceSN-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'deviceSN-val :lambda-list '(m))
(cl:defmethod deviceSN-val ((m <GetDeviceSN-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:deviceSN-val is deprecated.  Use dobot-srv:deviceSN instead.")
  (deviceSN m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceSN-response>) ostream)
  "Serializes a message object of type '<GetDeviceSN-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'deviceSN) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceSN-response>) istream)
  "Deserializes a message object of type '<GetDeviceSN-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'deviceSN) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceSN-response>)))
  "Returns string type for a service object of type '<GetDeviceSN-response>"
  "dobot/GetDeviceSNResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceSN-response)))
  "Returns string type for a service object of type 'GetDeviceSN-response"
  "dobot/GetDeviceSNResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceSN-response>)))
  "Returns md5sum for a message object of type '<GetDeviceSN-response>"
  "e0f9486ebe760ac95403f1a902002a01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceSN-response)))
  "Returns md5sum for a message object of type 'GetDeviceSN-response"
  "e0f9486ebe760ac95403f1a902002a01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceSN-response>)))
  "Returns full string definition for message of type '<GetDeviceSN-response>"
  (cl:format cl:nil "int32 result~%std_msgs/String deviceSN~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceSN-response)))
  "Returns full string definition for message of type 'GetDeviceSN-response"
  (cl:format cl:nil "int32 result~%std_msgs/String deviceSN~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceSN-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'deviceSN))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceSN-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceSN-response
    (cl:cons ':result (result msg))
    (cl:cons ':deviceSN (deviceSN msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeviceSN)))
  'GetDeviceSN-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeviceSN)))
  'GetDeviceSN-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceSN)))
  "Returns string type for a service object of type '<GetDeviceSN>"
  "dobot/GetDeviceSN")