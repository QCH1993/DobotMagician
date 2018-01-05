; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetWAITCmd-request.msg.html

(cl:defclass <SetWAITCmd-request> (roslisp-msg-protocol:ros-message)
  ((timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0))
)

(cl:defclass SetWAITCmd-request (<SetWAITCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWAITCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWAITCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetWAITCmd-request> is deprecated: use dobot-srv:SetWAITCmd-request instead.")))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <SetWAITCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:timeout-val is deprecated.  Use dobot-srv:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWAITCmd-request>) ostream)
  "Serializes a message object of type '<SetWAITCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeout)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeout)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeout)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeout)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWAITCmd-request>) istream)
  "Deserializes a message object of type '<SetWAITCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWAITCmd-request>)))
  "Returns string type for a service object of type '<SetWAITCmd-request>"
  "dobot/SetWAITCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWAITCmd-request)))
  "Returns string type for a service object of type 'SetWAITCmd-request"
  "dobot/SetWAITCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWAITCmd-request>)))
  "Returns md5sum for a message object of type '<SetWAITCmd-request>"
  "300c9125000c1f06b2b1302e5e252f7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWAITCmd-request)))
  "Returns md5sum for a message object of type 'SetWAITCmd-request"
  "300c9125000c1f06b2b1302e5e252f7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWAITCmd-request>)))
  "Returns full string definition for message of type '<SetWAITCmd-request>"
  (cl:format cl:nil "uint32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWAITCmd-request)))
  "Returns full string definition for message of type 'SetWAITCmd-request"
  (cl:format cl:nil "uint32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWAITCmd-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWAITCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWAITCmd-request
    (cl:cons ':timeout (timeout msg))
))
;//! \htmlinclude SetWAITCmd-response.msg.html

(cl:defclass <SetWAITCmd-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetWAITCmd-response (<SetWAITCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWAITCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWAITCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetWAITCmd-response> is deprecated: use dobot-srv:SetWAITCmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetWAITCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetWAITCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWAITCmd-response>) ostream)
  "Serializes a message object of type '<SetWAITCmd-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWAITCmd-response>) istream)
  "Deserializes a message object of type '<SetWAITCmd-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWAITCmd-response>)))
  "Returns string type for a service object of type '<SetWAITCmd-response>"
  "dobot/SetWAITCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWAITCmd-response)))
  "Returns string type for a service object of type 'SetWAITCmd-response"
  "dobot/SetWAITCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWAITCmd-response>)))
  "Returns md5sum for a message object of type '<SetWAITCmd-response>"
  "300c9125000c1f06b2b1302e5e252f7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWAITCmd-response)))
  "Returns md5sum for a message object of type 'SetWAITCmd-response"
  "300c9125000c1f06b2b1302e5e252f7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWAITCmd-response>)))
  "Returns full string definition for message of type '<SetWAITCmd-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWAITCmd-response)))
  "Returns full string definition for message of type 'SetWAITCmd-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWAITCmd-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWAITCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWAITCmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWAITCmd)))
  'SetWAITCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWAITCmd)))
  'SetWAITCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWAITCmd)))
  "Returns string type for a service object of type '<SetWAITCmd>"
  "dobot/SetWAITCmd")