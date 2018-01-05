; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetIOMultiplexing-request.msg.html

(cl:defclass <SetIOMultiplexing-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0)
   (multiplex
    :reader multiplex
    :initarg :multiplex
    :type cl:fixnum
    :initform 0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetIOMultiplexing-request (<SetIOMultiplexing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIOMultiplexing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIOMultiplexing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetIOMultiplexing-request> is deprecated: use dobot-srv:SetIOMultiplexing-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <SetIOMultiplexing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'multiplex-val :lambda-list '(m))
(cl:defmethod multiplex-val ((m <SetIOMultiplexing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:multiplex-val is deprecated.  Use dobot-srv:multiplex instead.")
  (multiplex m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetIOMultiplexing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIOMultiplexing-request>) ostream)
  "Serializes a message object of type '<SetIOMultiplexing-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIOMultiplexing-request>) istream)
  "Deserializes a message object of type '<SetIOMultiplexing-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplex)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIOMultiplexing-request>)))
  "Returns string type for a service object of type '<SetIOMultiplexing-request>"
  "dobot/SetIOMultiplexingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOMultiplexing-request)))
  "Returns string type for a service object of type 'SetIOMultiplexing-request"
  "dobot/SetIOMultiplexingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIOMultiplexing-request>)))
  "Returns md5sum for a message object of type '<SetIOMultiplexing-request>"
  "0d42b2a07901322be1553ed3f1e55579")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIOMultiplexing-request)))
  "Returns md5sum for a message object of type 'SetIOMultiplexing-request"
  "0d42b2a07901322be1553ed3f1e55579")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIOMultiplexing-request>)))
  "Returns full string definition for message of type '<SetIOMultiplexing-request>"
  (cl:format cl:nil "uint8 address~%uint8 multiplex~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIOMultiplexing-request)))
  "Returns full string definition for message of type 'SetIOMultiplexing-request"
  (cl:format cl:nil "uint8 address~%uint8 multiplex~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIOMultiplexing-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIOMultiplexing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIOMultiplexing-request
    (cl:cons ':address (address msg))
    (cl:cons ':multiplex (multiplex msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetIOMultiplexing-response.msg.html

(cl:defclass <SetIOMultiplexing-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (queuedCmdIndex
    :reader queuedCmdIndex
    :initarg :queuedCmdIndex
    :type cl:integer
    :initform 0))
)

(cl:defclass SetIOMultiplexing-response (<SetIOMultiplexing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIOMultiplexing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIOMultiplexing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetIOMultiplexing-response> is deprecated: use dobot-srv:SetIOMultiplexing-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetIOMultiplexing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetIOMultiplexing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIOMultiplexing-response>) ostream)
  "Serializes a message object of type '<SetIOMultiplexing-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'queuedCmdIndex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIOMultiplexing-response>) istream)
  "Deserializes a message object of type '<SetIOMultiplexing-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIOMultiplexing-response>)))
  "Returns string type for a service object of type '<SetIOMultiplexing-response>"
  "dobot/SetIOMultiplexingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOMultiplexing-response)))
  "Returns string type for a service object of type 'SetIOMultiplexing-response"
  "dobot/SetIOMultiplexingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIOMultiplexing-response>)))
  "Returns md5sum for a message object of type '<SetIOMultiplexing-response>"
  "0d42b2a07901322be1553ed3f1e55579")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIOMultiplexing-response)))
  "Returns md5sum for a message object of type 'SetIOMultiplexing-response"
  "0d42b2a07901322be1553ed3f1e55579")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIOMultiplexing-response>)))
  "Returns full string definition for message of type '<SetIOMultiplexing-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIOMultiplexing-response)))
  "Returns full string definition for message of type 'SetIOMultiplexing-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIOMultiplexing-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIOMultiplexing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIOMultiplexing-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIOMultiplexing)))
  'SetIOMultiplexing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIOMultiplexing)))
  'SetIOMultiplexing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOMultiplexing)))
  "Returns string type for a service object of type '<SetIOMultiplexing>"
  "dobot/SetIOMultiplexing")