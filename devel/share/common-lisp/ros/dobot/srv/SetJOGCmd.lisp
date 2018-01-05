; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetJOGCmd-request.msg.html

(cl:defclass <SetJOGCmd-request> (roslisp-msg-protocol:ros-message)
  ((isJoint
    :reader isJoint
    :initarg :isJoint
    :type cl:fixnum
    :initform 0)
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetJOGCmd-request (<SetJOGCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJOGCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJOGCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetJOGCmd-request> is deprecated: use dobot-srv:SetJOGCmd-request instead.")))

(cl:ensure-generic-function 'isJoint-val :lambda-list '(m))
(cl:defmethod isJoint-val ((m <SetJOGCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isJoint-val is deprecated.  Use dobot-srv:isJoint instead.")
  (isJoint m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <SetJOGCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:cmd-val is deprecated.  Use dobot-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJOGCmd-request>) ostream)
  "Serializes a message object of type '<SetJOGCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isJoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJOGCmd-request>) istream)
  "Deserializes a message object of type '<SetJOGCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isJoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJOGCmd-request>)))
  "Returns string type for a service object of type '<SetJOGCmd-request>"
  "dobot/SetJOGCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCmd-request)))
  "Returns string type for a service object of type 'SetJOGCmd-request"
  "dobot/SetJOGCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJOGCmd-request>)))
  "Returns md5sum for a message object of type '<SetJOGCmd-request>"
  "1b7c1bd2f60c0408e6705df335544340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJOGCmd-request)))
  "Returns md5sum for a message object of type 'SetJOGCmd-request"
  "1b7c1bd2f60c0408e6705df335544340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJOGCmd-request>)))
  "Returns full string definition for message of type '<SetJOGCmd-request>"
  (cl:format cl:nil "uint8 isJoint~%uint8 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJOGCmd-request)))
  "Returns full string definition for message of type 'SetJOGCmd-request"
  (cl:format cl:nil "uint8 isJoint~%uint8 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJOGCmd-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJOGCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJOGCmd-request
    (cl:cons ':isJoint (isJoint msg))
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude SetJOGCmd-response.msg.html

(cl:defclass <SetJOGCmd-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJOGCmd-response (<SetJOGCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJOGCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJOGCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetJOGCmd-response> is deprecated: use dobot-srv:SetJOGCmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetJOGCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetJOGCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJOGCmd-response>) ostream)
  "Serializes a message object of type '<SetJOGCmd-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJOGCmd-response>) istream)
  "Deserializes a message object of type '<SetJOGCmd-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJOGCmd-response>)))
  "Returns string type for a service object of type '<SetJOGCmd-response>"
  "dobot/SetJOGCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCmd-response)))
  "Returns string type for a service object of type 'SetJOGCmd-response"
  "dobot/SetJOGCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJOGCmd-response>)))
  "Returns md5sum for a message object of type '<SetJOGCmd-response>"
  "1b7c1bd2f60c0408e6705df335544340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJOGCmd-response)))
  "Returns md5sum for a message object of type 'SetJOGCmd-response"
  "1b7c1bd2f60c0408e6705df335544340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJOGCmd-response>)))
  "Returns full string definition for message of type '<SetJOGCmd-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJOGCmd-response)))
  "Returns full string definition for message of type 'SetJOGCmd-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJOGCmd-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJOGCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJOGCmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJOGCmd)))
  'SetJOGCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJOGCmd)))
  'SetJOGCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCmd)))
  "Returns string type for a service object of type '<SetJOGCmd>"
  "dobot/SetJOGCmd")