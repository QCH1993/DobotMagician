; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetHOMECmd-request.msg.html

(cl:defclass <SetHOMECmd-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetHOMECmd-request (<SetHOMECmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHOMECmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHOMECmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetHOMECmd-request> is deprecated: use dobot-srv:SetHOMECmd-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHOMECmd-request>) ostream)
  "Serializes a message object of type '<SetHOMECmd-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHOMECmd-request>) istream)
  "Deserializes a message object of type '<SetHOMECmd-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHOMECmd-request>)))
  "Returns string type for a service object of type '<SetHOMECmd-request>"
  "dobot/SetHOMECmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHOMECmd-request)))
  "Returns string type for a service object of type 'SetHOMECmd-request"
  "dobot/SetHOMECmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHOMECmd-request>)))
  "Returns md5sum for a message object of type '<SetHOMECmd-request>"
  "cbf7b461449133eb5dd6ebbd8d38dedc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHOMECmd-request)))
  "Returns md5sum for a message object of type 'SetHOMECmd-request"
  "cbf7b461449133eb5dd6ebbd8d38dedc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHOMECmd-request>)))
  "Returns full string definition for message of type '<SetHOMECmd-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHOMECmd-request)))
  "Returns full string definition for message of type 'SetHOMECmd-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHOMECmd-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHOMECmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHOMECmd-request
))
;//! \htmlinclude SetHOMECmd-response.msg.html

(cl:defclass <SetHOMECmd-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetHOMECmd-response (<SetHOMECmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHOMECmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHOMECmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetHOMECmd-response> is deprecated: use dobot-srv:SetHOMECmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetHOMECmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetHOMECmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHOMECmd-response>) ostream)
  "Serializes a message object of type '<SetHOMECmd-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHOMECmd-response>) istream)
  "Deserializes a message object of type '<SetHOMECmd-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHOMECmd-response>)))
  "Returns string type for a service object of type '<SetHOMECmd-response>"
  "dobot/SetHOMECmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHOMECmd-response)))
  "Returns string type for a service object of type 'SetHOMECmd-response"
  "dobot/SetHOMECmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHOMECmd-response>)))
  "Returns md5sum for a message object of type '<SetHOMECmd-response>"
  "cbf7b461449133eb5dd6ebbd8d38dedc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHOMECmd-response)))
  "Returns md5sum for a message object of type 'SetHOMECmd-response"
  "cbf7b461449133eb5dd6ebbd8d38dedc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHOMECmd-response>)))
  "Returns full string definition for message of type '<SetHOMECmd-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHOMECmd-response)))
  "Returns full string definition for message of type 'SetHOMECmd-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHOMECmd-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHOMECmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHOMECmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetHOMECmd)))
  'SetHOMECmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetHOMECmd)))
  'SetHOMECmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHOMECmd)))
  "Returns string type for a service object of type '<SetHOMECmd>"
  "dobot/SetHOMECmd")