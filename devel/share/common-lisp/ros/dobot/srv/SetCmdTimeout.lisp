; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetCmdTimeout-request.msg.html

(cl:defclass <SetCmdTimeout-request> (roslisp-msg-protocol:ros-message)
  ((timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCmdTimeout-request (<SetCmdTimeout-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCmdTimeout-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCmdTimeout-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetCmdTimeout-request> is deprecated: use dobot-srv:SetCmdTimeout-request instead.")))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <SetCmdTimeout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:timeout-val is deprecated.  Use dobot-srv:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCmdTimeout-request>) ostream)
  "Serializes a message object of type '<SetCmdTimeout-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeout)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeout)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeout)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeout)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCmdTimeout-request>) istream)
  "Deserializes a message object of type '<SetCmdTimeout-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeout)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCmdTimeout-request>)))
  "Returns string type for a service object of type '<SetCmdTimeout-request>"
  "dobot/SetCmdTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCmdTimeout-request)))
  "Returns string type for a service object of type 'SetCmdTimeout-request"
  "dobot/SetCmdTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCmdTimeout-request>)))
  "Returns md5sum for a message object of type '<SetCmdTimeout-request>"
  "13441e7d88f3c6f438486b7bab0cc968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCmdTimeout-request)))
  "Returns md5sum for a message object of type 'SetCmdTimeout-request"
  "13441e7d88f3c6f438486b7bab0cc968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCmdTimeout-request>)))
  "Returns full string definition for message of type '<SetCmdTimeout-request>"
  (cl:format cl:nil "uint32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCmdTimeout-request)))
  "Returns full string definition for message of type 'SetCmdTimeout-request"
  (cl:format cl:nil "uint32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCmdTimeout-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCmdTimeout-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCmdTimeout-request
    (cl:cons ':timeout (timeout msg))
))
;//! \htmlinclude SetCmdTimeout-response.msg.html

(cl:defclass <SetCmdTimeout-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCmdTimeout-response (<SetCmdTimeout-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCmdTimeout-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCmdTimeout-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetCmdTimeout-response> is deprecated: use dobot-srv:SetCmdTimeout-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetCmdTimeout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCmdTimeout-response>) ostream)
  "Serializes a message object of type '<SetCmdTimeout-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCmdTimeout-response>) istream)
  "Deserializes a message object of type '<SetCmdTimeout-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCmdTimeout-response>)))
  "Returns string type for a service object of type '<SetCmdTimeout-response>"
  "dobot/SetCmdTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCmdTimeout-response)))
  "Returns string type for a service object of type 'SetCmdTimeout-response"
  "dobot/SetCmdTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCmdTimeout-response>)))
  "Returns md5sum for a message object of type '<SetCmdTimeout-response>"
  "13441e7d88f3c6f438486b7bab0cc968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCmdTimeout-response)))
  "Returns md5sum for a message object of type 'SetCmdTimeout-response"
  "13441e7d88f3c6f438486b7bab0cc968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCmdTimeout-response>)))
  "Returns full string definition for message of type '<SetCmdTimeout-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCmdTimeout-response)))
  "Returns full string definition for message of type 'SetCmdTimeout-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCmdTimeout-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCmdTimeout-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCmdTimeout-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCmdTimeout)))
  'SetCmdTimeout-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCmdTimeout)))
  'SetCmdTimeout-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCmdTimeout)))
  "Returns string type for a service object of type '<SetCmdTimeout>"
  "dobot/SetCmdTimeout")