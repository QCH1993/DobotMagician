; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetDeviceVersion-request.msg.html

(cl:defclass <GetDeviceVersion-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDeviceVersion-request (<GetDeviceVersion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceVersion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceVersion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetDeviceVersion-request> is deprecated: use dobot-srv:GetDeviceVersion-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceVersion-request>) ostream)
  "Serializes a message object of type '<GetDeviceVersion-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceVersion-request>) istream)
  "Deserializes a message object of type '<GetDeviceVersion-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceVersion-request>)))
  "Returns string type for a service object of type '<GetDeviceVersion-request>"
  "dobot/GetDeviceVersionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceVersion-request)))
  "Returns string type for a service object of type 'GetDeviceVersion-request"
  "dobot/GetDeviceVersionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceVersion-request>)))
  "Returns md5sum for a message object of type '<GetDeviceVersion-request>"
  "c3c3f825efd26e7d40dd5c75956d6244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceVersion-request)))
  "Returns md5sum for a message object of type 'GetDeviceVersion-request"
  "c3c3f825efd26e7d40dd5c75956d6244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceVersion-request>)))
  "Returns full string definition for message of type '<GetDeviceVersion-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceVersion-request)))
  "Returns full string definition for message of type 'GetDeviceVersion-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceVersion-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceVersion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceVersion-request
))
;//! \htmlinclude GetDeviceVersion-response.msg.html

(cl:defclass <GetDeviceVersion-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (majorVersion
    :reader majorVersion
    :initarg :majorVersion
    :type cl:fixnum
    :initform 0)
   (minorVersion
    :reader minorVersion
    :initarg :minorVersion
    :type cl:fixnum
    :initform 0)
   (revision
    :reader revision
    :initarg :revision
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetDeviceVersion-response (<GetDeviceVersion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceVersion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceVersion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetDeviceVersion-response> is deprecated: use dobot-srv:GetDeviceVersion-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetDeviceVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'majorVersion-val :lambda-list '(m))
(cl:defmethod majorVersion-val ((m <GetDeviceVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:majorVersion-val is deprecated.  Use dobot-srv:majorVersion instead.")
  (majorVersion m))

(cl:ensure-generic-function 'minorVersion-val :lambda-list '(m))
(cl:defmethod minorVersion-val ((m <GetDeviceVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:minorVersion-val is deprecated.  Use dobot-srv:minorVersion instead.")
  (minorVersion m))

(cl:ensure-generic-function 'revision-val :lambda-list '(m))
(cl:defmethod revision-val ((m <GetDeviceVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:revision-val is deprecated.  Use dobot-srv:revision instead.")
  (revision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceVersion-response>) ostream)
  "Serializes a message object of type '<GetDeviceVersion-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'majorVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minorVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revision)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceVersion-response>) istream)
  "Deserializes a message object of type '<GetDeviceVersion-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'majorVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minorVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revision)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceVersion-response>)))
  "Returns string type for a service object of type '<GetDeviceVersion-response>"
  "dobot/GetDeviceVersionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceVersion-response)))
  "Returns string type for a service object of type 'GetDeviceVersion-response"
  "dobot/GetDeviceVersionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceVersion-response>)))
  "Returns md5sum for a message object of type '<GetDeviceVersion-response>"
  "c3c3f825efd26e7d40dd5c75956d6244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceVersion-response)))
  "Returns md5sum for a message object of type 'GetDeviceVersion-response"
  "c3c3f825efd26e7d40dd5c75956d6244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceVersion-response>)))
  "Returns full string definition for message of type '<GetDeviceVersion-response>"
  (cl:format cl:nil "int32 result~%uint8 majorVersion~%uint8 minorVersion~%uint8 revision~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceVersion-response)))
  "Returns full string definition for message of type 'GetDeviceVersion-response"
  (cl:format cl:nil "int32 result~%uint8 majorVersion~%uint8 minorVersion~%uint8 revision~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceVersion-response>))
  (cl:+ 0
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceVersion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceVersion-response
    (cl:cons ':result (result msg))
    (cl:cons ':majorVersion (majorVersion msg))
    (cl:cons ':minorVersion (minorVersion msg))
    (cl:cons ':revision (revision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeviceVersion)))
  'GetDeviceVersion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeviceVersion)))
  'GetDeviceVersion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceVersion)))
  "Returns string type for a service object of type '<GetDeviceVersion>"
  "dobot/GetDeviceVersion")