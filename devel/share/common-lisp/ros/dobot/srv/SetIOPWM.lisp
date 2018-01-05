; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetIOPWM-request.msg.html

(cl:defclass <SetIOPWM-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0)
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (dutyCycle
    :reader dutyCycle
    :initarg :dutyCycle
    :type cl:float
    :initform 0.0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetIOPWM-request (<SetIOPWM-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIOPWM-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIOPWM-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetIOPWM-request> is deprecated: use dobot-srv:SetIOPWM-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <SetIOPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <SetIOPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:frequency-val is deprecated.  Use dobot-srv:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'dutyCycle-val :lambda-list '(m))
(cl:defmethod dutyCycle-val ((m <SetIOPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:dutyCycle-val is deprecated.  Use dobot-srv:dutyCycle instead.")
  (dutyCycle m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetIOPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIOPWM-request>) ostream)
  "Serializes a message object of type '<SetIOPWM-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dutyCycle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIOPWM-request>) istream)
  "Deserializes a message object of type '<SetIOPWM-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dutyCycle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIOPWM-request>)))
  "Returns string type for a service object of type '<SetIOPWM-request>"
  "dobot/SetIOPWMRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOPWM-request)))
  "Returns string type for a service object of type 'SetIOPWM-request"
  "dobot/SetIOPWMRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIOPWM-request>)))
  "Returns md5sum for a message object of type '<SetIOPWM-request>"
  "ea172c95eba595197a616b555cba00ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIOPWM-request)))
  "Returns md5sum for a message object of type 'SetIOPWM-request"
  "ea172c95eba595197a616b555cba00ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIOPWM-request>)))
  "Returns full string definition for message of type '<SetIOPWM-request>"
  (cl:format cl:nil "uint8 address~%float32 frequency~%float32 dutyCycle~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIOPWM-request)))
  "Returns full string definition for message of type 'SetIOPWM-request"
  (cl:format cl:nil "uint8 address~%float32 frequency~%float32 dutyCycle~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIOPWM-request>))
  (cl:+ 0
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIOPWM-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIOPWM-request
    (cl:cons ':address (address msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':dutyCycle (dutyCycle msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetIOPWM-response.msg.html

(cl:defclass <SetIOPWM-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetIOPWM-response (<SetIOPWM-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIOPWM-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIOPWM-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetIOPWM-response> is deprecated: use dobot-srv:SetIOPWM-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetIOPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetIOPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIOPWM-response>) ostream)
  "Serializes a message object of type '<SetIOPWM-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIOPWM-response>) istream)
  "Deserializes a message object of type '<SetIOPWM-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIOPWM-response>)))
  "Returns string type for a service object of type '<SetIOPWM-response>"
  "dobot/SetIOPWMResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOPWM-response)))
  "Returns string type for a service object of type 'SetIOPWM-response"
  "dobot/SetIOPWMResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIOPWM-response>)))
  "Returns md5sum for a message object of type '<SetIOPWM-response>"
  "ea172c95eba595197a616b555cba00ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIOPWM-response)))
  "Returns md5sum for a message object of type 'SetIOPWM-response"
  "ea172c95eba595197a616b555cba00ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIOPWM-response>)))
  "Returns full string definition for message of type '<SetIOPWM-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIOPWM-response)))
  "Returns full string definition for message of type 'SetIOPWM-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIOPWM-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIOPWM-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIOPWM-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIOPWM)))
  'SetIOPWM-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIOPWM)))
  'SetIOPWM-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOPWM)))
  "Returns string type for a service object of type '<SetIOPWM>"
  "dobot/SetIOPWM")