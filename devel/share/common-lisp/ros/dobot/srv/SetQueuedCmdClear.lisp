; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetQueuedCmdClear-request.msg.html

(cl:defclass <SetQueuedCmdClear-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetQueuedCmdClear-request (<SetQueuedCmdClear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdClear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdClear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdClear-request> is deprecated: use dobot-srv:SetQueuedCmdClear-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdClear-request>) ostream)
  "Serializes a message object of type '<SetQueuedCmdClear-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdClear-request>) istream)
  "Deserializes a message object of type '<SetQueuedCmdClear-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdClear-request>)))
  "Returns string type for a service object of type '<SetQueuedCmdClear-request>"
  "dobot/SetQueuedCmdClearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdClear-request)))
  "Returns string type for a service object of type 'SetQueuedCmdClear-request"
  "dobot/SetQueuedCmdClearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdClear-request>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdClear-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdClear-request)))
  "Returns md5sum for a message object of type 'SetQueuedCmdClear-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdClear-request>)))
  "Returns full string definition for message of type '<SetQueuedCmdClear-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdClear-request)))
  "Returns full string definition for message of type 'SetQueuedCmdClear-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdClear-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdClear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdClear-request
))
;//! \htmlinclude SetQueuedCmdClear-response.msg.html

(cl:defclass <SetQueuedCmdClear-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetQueuedCmdClear-response (<SetQueuedCmdClear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQueuedCmdClear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQueuedCmdClear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetQueuedCmdClear-response> is deprecated: use dobot-srv:SetQueuedCmdClear-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetQueuedCmdClear-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQueuedCmdClear-response>) ostream)
  "Serializes a message object of type '<SetQueuedCmdClear-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQueuedCmdClear-response>) istream)
  "Deserializes a message object of type '<SetQueuedCmdClear-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQueuedCmdClear-response>)))
  "Returns string type for a service object of type '<SetQueuedCmdClear-response>"
  "dobot/SetQueuedCmdClearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdClear-response)))
  "Returns string type for a service object of type 'SetQueuedCmdClear-response"
  "dobot/SetQueuedCmdClearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQueuedCmdClear-response>)))
  "Returns md5sum for a message object of type '<SetQueuedCmdClear-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQueuedCmdClear-response)))
  "Returns md5sum for a message object of type 'SetQueuedCmdClear-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQueuedCmdClear-response>)))
  "Returns full string definition for message of type '<SetQueuedCmdClear-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQueuedCmdClear-response)))
  "Returns full string definition for message of type 'SetQueuedCmdClear-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQueuedCmdClear-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQueuedCmdClear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQueuedCmdClear-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetQueuedCmdClear)))
  'SetQueuedCmdClear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetQueuedCmdClear)))
  'SetQueuedCmdClear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQueuedCmdClear)))
  "Returns string type for a service object of type '<SetQueuedCmdClear>"
  "dobot/SetQueuedCmdClear")