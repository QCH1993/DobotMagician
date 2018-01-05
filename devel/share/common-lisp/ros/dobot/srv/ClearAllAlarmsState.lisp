; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude ClearAllAlarmsState-request.msg.html

(cl:defclass <ClearAllAlarmsState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearAllAlarmsState-request (<ClearAllAlarmsState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearAllAlarmsState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearAllAlarmsState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<ClearAllAlarmsState-request> is deprecated: use dobot-srv:ClearAllAlarmsState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearAllAlarmsState-request>) ostream)
  "Serializes a message object of type '<ClearAllAlarmsState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearAllAlarmsState-request>) istream)
  "Deserializes a message object of type '<ClearAllAlarmsState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearAllAlarmsState-request>)))
  "Returns string type for a service object of type '<ClearAllAlarmsState-request>"
  "dobot/ClearAllAlarmsStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearAllAlarmsState-request)))
  "Returns string type for a service object of type 'ClearAllAlarmsState-request"
  "dobot/ClearAllAlarmsStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearAllAlarmsState-request>)))
  "Returns md5sum for a message object of type '<ClearAllAlarmsState-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearAllAlarmsState-request)))
  "Returns md5sum for a message object of type 'ClearAllAlarmsState-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearAllAlarmsState-request>)))
  "Returns full string definition for message of type '<ClearAllAlarmsState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearAllAlarmsState-request)))
  "Returns full string definition for message of type 'ClearAllAlarmsState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearAllAlarmsState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearAllAlarmsState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearAllAlarmsState-request
))
;//! \htmlinclude ClearAllAlarmsState-response.msg.html

(cl:defclass <ClearAllAlarmsState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass ClearAllAlarmsState-response (<ClearAllAlarmsState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearAllAlarmsState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearAllAlarmsState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<ClearAllAlarmsState-response> is deprecated: use dobot-srv:ClearAllAlarmsState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ClearAllAlarmsState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearAllAlarmsState-response>) ostream)
  "Serializes a message object of type '<ClearAllAlarmsState-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearAllAlarmsState-response>) istream)
  "Deserializes a message object of type '<ClearAllAlarmsState-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearAllAlarmsState-response>)))
  "Returns string type for a service object of type '<ClearAllAlarmsState-response>"
  "dobot/ClearAllAlarmsStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearAllAlarmsState-response)))
  "Returns string type for a service object of type 'ClearAllAlarmsState-response"
  "dobot/ClearAllAlarmsStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearAllAlarmsState-response>)))
  "Returns md5sum for a message object of type '<ClearAllAlarmsState-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearAllAlarmsState-response)))
  "Returns md5sum for a message object of type 'ClearAllAlarmsState-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearAllAlarmsState-response>)))
  "Returns full string definition for message of type '<ClearAllAlarmsState-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearAllAlarmsState-response)))
  "Returns full string definition for message of type 'ClearAllAlarmsState-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearAllAlarmsState-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearAllAlarmsState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearAllAlarmsState-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearAllAlarmsState)))
  'ClearAllAlarmsState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearAllAlarmsState)))
  'ClearAllAlarmsState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearAllAlarmsState)))
  "Returns string type for a service object of type '<ClearAllAlarmsState>"
  "dobot/ClearAllAlarmsState")