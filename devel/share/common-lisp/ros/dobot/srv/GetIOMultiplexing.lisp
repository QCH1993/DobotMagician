; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetIOMultiplexing-request.msg.html

(cl:defclass <GetIOMultiplexing-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIOMultiplexing-request (<GetIOMultiplexing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIOMultiplexing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIOMultiplexing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIOMultiplexing-request> is deprecated: use dobot-srv:GetIOMultiplexing-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <GetIOMultiplexing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIOMultiplexing-request>) ostream)
  "Serializes a message object of type '<GetIOMultiplexing-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIOMultiplexing-request>) istream)
  "Deserializes a message object of type '<GetIOMultiplexing-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIOMultiplexing-request>)))
  "Returns string type for a service object of type '<GetIOMultiplexing-request>"
  "dobot/GetIOMultiplexingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOMultiplexing-request)))
  "Returns string type for a service object of type 'GetIOMultiplexing-request"
  "dobot/GetIOMultiplexingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIOMultiplexing-request>)))
  "Returns md5sum for a message object of type '<GetIOMultiplexing-request>"
  "30a9ee7733d17c6beafe8b39fe97a95c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIOMultiplexing-request)))
  "Returns md5sum for a message object of type 'GetIOMultiplexing-request"
  "30a9ee7733d17c6beafe8b39fe97a95c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIOMultiplexing-request>)))
  "Returns full string definition for message of type '<GetIOMultiplexing-request>"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIOMultiplexing-request)))
  "Returns full string definition for message of type 'GetIOMultiplexing-request"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIOMultiplexing-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIOMultiplexing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIOMultiplexing-request
    (cl:cons ':address (address msg))
))
;//! \htmlinclude GetIOMultiplexing-response.msg.html

(cl:defclass <GetIOMultiplexing-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (multiplex
    :reader multiplex
    :initarg :multiplex
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIOMultiplexing-response (<GetIOMultiplexing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIOMultiplexing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIOMultiplexing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIOMultiplexing-response> is deprecated: use dobot-srv:GetIOMultiplexing-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetIOMultiplexing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'multiplex-val :lambda-list '(m))
(cl:defmethod multiplex-val ((m <GetIOMultiplexing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:multiplex-val is deprecated.  Use dobot-srv:multiplex instead.")
  (multiplex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIOMultiplexing-response>) ostream)
  "Serializes a message object of type '<GetIOMultiplexing-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIOMultiplexing-response>) istream)
  "Deserializes a message object of type '<GetIOMultiplexing-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIOMultiplexing-response>)))
  "Returns string type for a service object of type '<GetIOMultiplexing-response>"
  "dobot/GetIOMultiplexingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOMultiplexing-response)))
  "Returns string type for a service object of type 'GetIOMultiplexing-response"
  "dobot/GetIOMultiplexingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIOMultiplexing-response>)))
  "Returns md5sum for a message object of type '<GetIOMultiplexing-response>"
  "30a9ee7733d17c6beafe8b39fe97a95c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIOMultiplexing-response)))
  "Returns md5sum for a message object of type 'GetIOMultiplexing-response"
  "30a9ee7733d17c6beafe8b39fe97a95c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIOMultiplexing-response>)))
  "Returns full string definition for message of type '<GetIOMultiplexing-response>"
  (cl:format cl:nil "int32 result~%uint8 multiplex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIOMultiplexing-response)))
  "Returns full string definition for message of type 'GetIOMultiplexing-response"
  (cl:format cl:nil "int32 result~%uint8 multiplex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIOMultiplexing-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIOMultiplexing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIOMultiplexing-response
    (cl:cons ':result (result msg))
    (cl:cons ':multiplex (multiplex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIOMultiplexing)))
  'GetIOMultiplexing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIOMultiplexing)))
  'GetIOMultiplexing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOMultiplexing)))
  "Returns string type for a service object of type '<GetIOMultiplexing>"
  "dobot/GetIOMultiplexing")