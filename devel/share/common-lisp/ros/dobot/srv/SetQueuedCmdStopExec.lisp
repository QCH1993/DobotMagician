; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetQueuedCmdStopExec-request.msg.html

(cl:defclass <SetQueuedCmdStopExec-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetQueuedCmdStopExec-request (<SetQueuedCmdStopExec-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdStopExec-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdStopExec-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdStopExec-request> is deprecated: use dobot-srv:SetQueuedCmdStopExec-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdStopExec-request>) ostream)
  "Serializes a message object of type '<SetQueuedCmdStopExec-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdStopExec-request>) istream)
  "Deserializes a message object of type '<SetQueuedCmdStopExec-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdStopExec-request>)))
  "Returns string type for a service object of type '<SetQueuedCmdStopExec-request>"
  "dobot/SetQueuedCmdStopExecRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdStopExec-request)))
  "Returns string type for a service object of type 'SetQueuedCmdStopExec-request"
  "dobot/SetQueuedCmdStopExecRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdStopExec-request>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdStopExec-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdStopExec-request)))
  "Returns md5sum for a message object of type 'SetQueuedCmdStopExec-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdStopExec-request>)))
  "Returns full string definition for message of type '<SetQueuedCmdStopExec-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdStopExec-request)))
  "Returns full string definition for message of type 'SetQueuedCmdStopExec-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdStopExec-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdStopExec-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdStopExec-request
))
;//! \htmlinclude SetQueuedCmdStopExec-response.msg.html

(cl:defclass <SetQueuedCmdStopExec-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetQueuedCmdStopExec-response (<SetQueuedCmdStopExec-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdStopExec-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdStopExec-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdStopExec-response> is deprecated: use dobot-srv:SetQueuedCmdStopExec-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetQueuedCmdStopExec-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdStopExec-response>) ostream)
  "Serializes a message object of type '<SetQueuedCmdStopExec-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdStopExec-response>) istream)
  "Deserializes a message object of type '<SetQueuedCmdStopExec-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdStopExec-response>)))
  "Returns string type for a service object of type '<SetQueuedCmdStopExec-response>"
  "dobot/SetQueuedCmdStopExecResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdStopExec-response)))
  "Returns string type for a service object of type 'SetQueuedCmdStopExec-response"
  "dobot/SetQueuedCmdStopExecResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdStopExec-response>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdStopExec-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdStopExec-response)))
  "Returns md5sum for a message object of type 'SetQueuedCmdStopExec-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdStopExec-response>)))
  "Returns full string definition for message of type '<SetQueuedCmdStopExec-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdStopExec-response)))
  "Returns full string definition for message of type 'SetQueuedCmdStopExec-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdStopExec-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdStopExec-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdStopExec-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetQueuedCmdStopExec)))
  'SetQueuedCmdStopExec-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetQueuedCmdStopExec)))
  'SetQueuedCmdStopExec-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdStopExec)))
  "Returns string type for a service object of type '<SetQueuedCmdStopExec>"
  "dobot/SetQueuedCmdStopExec")