; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetIODI-request.msg.html

(cl:defclass <GetIODI-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIODI-request (<GetIODI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIODI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIODI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIODI-request> is deprecated: use dobot-srv:GetIODI-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <GetIODI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIODI-request>) ostream)
  "Serializes a message object of type '<GetIODI-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIODI-request>) istream)
  "Deserializes a message object of type '<GetIODI-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIODI-request>)))
  "Returns string type for a service object of type '<GetIODI-request>"
  "dobot/GetIODIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIODI-request)))
  "Returns string type for a service object of type 'GetIODI-request"
  "dobot/GetIODIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIODI-request>)))
  "Returns md5sum for a message object of type '<GetIODI-request>"
  "658a016d9c03f31ccbdb869e836cf420")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIODI-request)))
  "Returns md5sum for a message object of type 'GetIODI-request"
  "658a016d9c03f31ccbdb869e836cf420")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIODI-request>)))
  "Returns full string definition for message of type '<GetIODI-request>"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIODI-request)))
  "Returns full string definition for message of type 'GetIODI-request"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIODI-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIODI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIODI-request
    (cl:cons ':address (address msg))
))
;//! \htmlinclude GetIODI-response.msg.html

(cl:defclass <GetIODI-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIODI-response (<GetIODI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIODI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIODI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIODI-response> is deprecated: use dobot-srv:GetIODI-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetIODI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <GetIODI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:level-val is deprecated.  Use dobot-srv:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIODI-response>) ostream)
  "Serializes a message object of type '<GetIODI-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIODI-response>) istream)
  "Deserializes a message object of type '<GetIODI-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIODI-response>)))
  "Returns string type for a service object of type '<GetIODI-response>"
  "dobot/GetIODIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIODI-response)))
  "Returns string type for a service object of type 'GetIODI-response"
  "dobot/GetIODIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIODI-response>)))
  "Returns md5sum for a message object of type '<GetIODI-response>"
  "658a016d9c03f31ccbdb869e836cf420")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIODI-response)))
  "Returns md5sum for a message object of type 'GetIODI-response"
  "658a016d9c03f31ccbdb869e836cf420")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIODI-response>)))
  "Returns full string definition for message of type '<GetIODI-response>"
  (cl:format cl:nil "int32 result~%uint8 level~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIODI-response)))
  "Returns full string definition for message of type 'GetIODI-response"
  (cl:format cl:nil "int32 result~%uint8 level~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIODI-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIODI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIODI-response
    (cl:cons ':result (result msg))
    (cl:cons ':level (level msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIODI)))
  'GetIODI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIODI)))
  'GetIODI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIODI)))
  "Returns string type for a service object of type '<GetIODI>"
  "dobot/GetIODI")