; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetQueuedCmdForceStopExec-request.msg.html

(cl:defclass <SetQueuedCmdForceStopExec-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetQueuedCmdForceStopExec-request (<SetQueuedCmdForceStopExec-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdForceStopExec-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdForceStopExec-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdForceStopExec-request> is deprecated: use dobot-srv:SetQueuedCmdForceStopExec-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdForceStopExec-request>) ostream)
  "Serializes a message object of type '<SetQueuedCmdForceStopExec-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdForceStopExec-request>) istream)
  "Deserializes a message object of type '<SetQueuedCmdForceStopExec-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdForceStopExec-request>)))
  "Returns string type for a service object of type '<SetQueuedCmdForceStopExec-request>"
  "dobot/SetQueuedCmdForceStopExecRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdForceStopExec-request)))
  "Returns string type for a service object of type 'SetQueuedCmdForceStopExec-request"
  "dobot/SetQueuedCmdForceStopExecRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdForceStopExec-request>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdForceStopExec-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdForceStopExec-request)))
  "Returns md5sum for a message object of type 'SetQueuedCmdForceStopExec-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdForceStopExec-request>)))
  "Returns full string definition for message of type '<SetQueuedCmdForceStopExec-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdForceStopExec-request)))
  "Returns full string definition for message of type 'SetQueuedCmdForceStopExec-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdForceStopExec-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdForceStopExec-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdForceStopExec-request
))
;//! \htmlinclude SetQueuedCmdForceStopExec-response.msg.html

(cl:defclass <SetQueuedCmdForceStopExec-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetQueuedCmdForceStopExec-response (<SetQueuedCmdForceStopExec-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdForceStopExec-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdForceStopExec-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdForceStopExec-response> is deprecated: use dobot-srv:SetQueuedCmdForceStopExec-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetQueuedCmdForceStopExec-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdForceStopExec-response>) ostream)
  "Serializes a message object of type '<SetQueuedCmdForceStopExec-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdForceStopExec-response>) istream)
  "Deserializes a message object of type '<SetQueuedCmdForceStopExec-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdForceStopExec-response>)))
  "Returns string type for a service object of type '<SetQueuedCmdForceStopExec-response>"
  "dobot/SetQueuedCmdForceStopExecResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdForceStopExec-response)))
  "Returns string type for a service object of type 'SetQueuedCmdForceStopExec-response"
  "dobot/SetQueuedCmdForceStopExecResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdForceStopExec-response>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdForceStopExec-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdForceStopExec-response)))
  "Returns md5sum for a message object of type 'SetQueuedCmdForceStopExec-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdForceStopExec-response>)))
  "Returns full string definition for message of type '<SetQueuedCmdForceStopExec-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdForceStopExec-response)))
  "Returns full string definition for message of type 'SetQueuedCmdForceStopExec-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdForceStopExec-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdForceStopExec-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdForceStopExec-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetQueuedCmdForceStopExec)))
  'SetQueuedCmdForceStopExec-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetQueuedCmdForceStopExec)))
  'SetQueuedCmdForceStopExec-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdForceStopExec)))
  "Returns string type for a service object of type '<SetQueuedCmdForceStopExec>"
  "dobot/SetQueuedCmdForceStopExec")