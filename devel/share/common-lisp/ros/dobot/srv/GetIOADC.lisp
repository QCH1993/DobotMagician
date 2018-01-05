; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetIOADC-request.msg.html

(cl:defclass <GetIOADC-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIOADC-request (<GetIOADC-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIOADC-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIOADC-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIOADC-request> is deprecated: use dobot-srv:GetIOADC-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <GetIOADC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIOADC-request>) ostream)
  "Serializes a message object of type '<GetIOADC-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIOADC-request>) istream)
  "Deserializes a message object of type '<GetIOADC-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIOADC-request>)))
  "Returns string type for a service object of type '<GetIOADC-request>"
  "dobot/GetIOADCRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOADC-request)))
  "Returns string type for a service object of type 'GetIOADC-request"
  "dobot/GetIOADCRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIOADC-request>)))
  "Returns md5sum for a message object of type '<GetIOADC-request>"
  "e7fd886e51f1d338955db5ffe38e27b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIOADC-request)))
  "Returns md5sum for a message object of type 'GetIOADC-request"
  "e7fd886e51f1d338955db5ffe38e27b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIOADC-request>)))
  "Returns full string definition for message of type '<GetIOADC-request>"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIOADC-request)))
  "Returns full string definition for message of type 'GetIOADC-request"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIOADC-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIOADC-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIOADC-request
    (cl:cons ':address (address msg))
))
;//! \htmlinclude GetIOADC-response.msg.html

(cl:defclass <GetIOADC-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIOADC-response (<GetIOADC-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIOADC-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIOADC-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIOADC-response> is deprecated: use dobot-srv:GetIOADC-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetIOADC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetIOADC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:value-val is deprecated.  Use dobot-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIOADC-response>) ostream)
  "Serializes a message object of type '<GetIOADC-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIOADC-response>) istream)
  "Deserializes a message object of type '<GetIOADC-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIOADC-response>)))
  "Returns string type for a service object of type '<GetIOADC-response>"
  "dobot/GetIOADCResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOADC-response)))
  "Returns string type for a service object of type 'GetIOADC-response"
  "dobot/GetIOADCResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIOADC-response>)))
  "Returns md5sum for a message object of type '<GetIOADC-response>"
  "e7fd886e51f1d338955db5ffe38e27b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIOADC-response)))
  "Returns md5sum for a message object of type 'GetIOADC-response"
  "e7fd886e51f1d338955db5ffe38e27b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIOADC-response>)))
  "Returns full string definition for message of type '<GetIOADC-response>"
  (cl:format cl:nil "int32 result~%uint16 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIOADC-response)))
  "Returns full string definition for message of type 'GetIOADC-response"
  (cl:format cl:nil "int32 result~%uint16 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIOADC-response>))
  (cl:+ 0
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIOADC-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIOADC-response
    (cl:cons ':result (result msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIOADC)))
  'GetIOADC-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIOADC)))
  'GetIOADC-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOADC)))
  "Returns string type for a service object of type '<GetIOADC>"
  "dobot/GetIOADC")