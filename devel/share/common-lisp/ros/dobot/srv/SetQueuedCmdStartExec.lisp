; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetQueuedCmdStartExec-request.msg.html

(cl:defclass <SetQueuedCmdStartExec-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetQueuedCmdStartExec-request (<SetQueuedCmdStartExec-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdStartExec-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdStartExec-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdStartExec-request> is deprecated: use dobot-srv:SetQueuedCmdStartExec-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdStartExec-request>) ostream)
  "Serializes a message object of type '<SetQueuedCmdStartExec-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdStartExec-request>) istream)
  "Deserializes a message object of type '<SetQueuedCmdStartExec-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdStartExec-request>)))
  "Returns string type for a service object of type '<SetQueuedCmdStartExec-request>"
  "dobot/SetQueuedCmdStartExecRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdStartExec-request)))
  "Returns string type for a service object of type 'SetQueuedCmdStartExec-request"
  "dobot/SetQueuedCmdStartExecRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdStartExec-request>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdStartExec-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdStartExec-request)))
  "Returns md5sum for a message object of type 'SetQueuedCmdStartExec-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdStartExec-request>)))
  "Returns full string definition for message of type '<SetQueuedCmdStartExec-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdStartExec-request)))
  "Returns full string definition for message of type 'SetQueuedCmdStartExec-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdStartExec-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdStartExec-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdStartExec-request
))
;//! \htmlinclude SetQueuedCmdStartExec-response.msg.html

(cl:defclass <SetQueuedCmdStartExec-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetQueuedCmdStartExec-response (<SetQueuedCmdStartExec-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdStartExec-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdStartExec-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdStartExec-response> is deprecated: use dobot-srv:SetQueuedCmdStartExec-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetQueuedCmdStartExec-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdStartExec-response>) ostream)
  "Serializes a message object of type '<SetQueuedCmdStartExec-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdStartExec-response>) istream)
  "Deserializes a message object of type '<SetQueuedCmdStartExec-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdStartExec-response>)))
  "Returns string type for a service object of type '<SetQueuedCmdStartExec-response>"
  "dobot/SetQueuedCmdStartExecResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdStartExec-response)))
  "Returns string type for a service object of type 'SetQueuedCmdStartExec-response"
  "dobot/SetQueuedCmdStartExecResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdStartExec-response>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdStartExec-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdStartExec-response)))
  "Returns md5sum for a message object of type 'SetQueuedCmdStartExec-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdStartExec-response>)))
  "Returns full string definition for message of type '<SetQueuedCmdStartExec-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdStartExec-response)))
  "Returns full string definition for message of type 'SetQueuedCmdStartExec-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdStartExec-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdStartExec-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdStartExec-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetQueuedCmdStartExec)))
  'SetQueuedCmdStartExec-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetQueuedCmdStartExec)))
  'SetQueuedCmdStartExec-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdStartExec)))
  "Returns string type for a service object of type '<SetQueuedCmdStartExec>"
  "dobot/SetQueuedCmdStartExec")