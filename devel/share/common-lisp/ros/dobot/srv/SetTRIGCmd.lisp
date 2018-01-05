; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetTRIGCmd-request.msg.html

(cl:defclass <SetTRIGCmd-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (condition
    :reader condition
    :initarg :condition
    :type cl:fixnum
    :initform 0)
   (threshold
    :reader threshold
    :initarg :threshold
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTRIGCmd-request (<SetTRIGCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTRIGCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTRIGCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetTRIGCmd-request> is deprecated: use dobot-srv:SetTRIGCmd-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <SetTRIGCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetTRIGCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:mode-val is deprecated.  Use dobot-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'condition-val :lambda-list '(m))
(cl:defmethod condition-val ((m <SetTRIGCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:condition-val is deprecated.  Use dobot-srv:condition instead.")
  (condition m))

(cl:ensure-generic-function 'threshold-val :lambda-list '(m))
(cl:defmethod threshold-val ((m <SetTRIGCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:threshold-val is deprecated.  Use dobot-srv:threshold instead.")
  (threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTRIGCmd-request>) ostream)
  "Serializes a message object of type '<SetTRIGCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'condition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'threshold)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTRIGCmd-request>) istream)
  "Deserializes a message object of type '<SetTRIGCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'condition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'threshold)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTRIGCmd-request>)))
  "Returns string type for a service object of type '<SetTRIGCmd-request>"
  "dobot/SetTRIGCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTRIGCmd-request)))
  "Returns string type for a service object of type 'SetTRIGCmd-request"
  "dobot/SetTRIGCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTRIGCmd-request>)))
  "Returns md5sum for a message object of type '<SetTRIGCmd-request>"
  "8520b4f0d79b5d03aed38c06250faf3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTRIGCmd-request)))
  "Returns md5sum for a message object of type 'SetTRIGCmd-request"
  "8520b4f0d79b5d03aed38c06250faf3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTRIGCmd-request>)))
  "Returns full string definition for message of type '<SetTRIGCmd-request>"
  (cl:format cl:nil "uint8 address~%uint8 mode~%uint8 condition~%uint16 threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTRIGCmd-request)))
  "Returns full string definition for message of type 'SetTRIGCmd-request"
  (cl:format cl:nil "uint8 address~%uint8 mode~%uint8 condition~%uint16 threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTRIGCmd-request>))
  (cl:+ 0
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTRIGCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTRIGCmd-request
    (cl:cons ':address (address msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':condition (condition msg))
    (cl:cons ':threshold (threshold msg))
))
;//! \htmlinclude SetTRIGCmd-response.msg.html

(cl:defclass <SetTRIGCmd-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetTRIGCmd-response (<SetTRIGCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTRIGCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTRIGCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetTRIGCmd-response> is deprecated: use dobot-srv:SetTRIGCmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetTRIGCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetTRIGCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTRIGCmd-response>) ostream)
  "Serializes a message object of type '<SetTRIGCmd-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTRIGCmd-response>) istream)
  "Deserializes a message object of type '<SetTRIGCmd-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTRIGCmd-response>)))
  "Returns string type for a service object of type '<SetTRIGCmd-response>"
  "dobot/SetTRIGCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTRIGCmd-response)))
  "Returns string type for a service object of type 'SetTRIGCmd-response"
  "dobot/SetTRIGCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTRIGCmd-response>)))
  "Returns md5sum for a message object of type '<SetTRIGCmd-response>"
  "8520b4f0d79b5d03aed38c06250faf3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTRIGCmd-response)))
  "Returns md5sum for a message object of type 'SetTRIGCmd-response"
  "8520b4f0d79b5d03aed38c06250faf3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTRIGCmd-response>)))
  "Returns full string definition for message of type '<SetTRIGCmd-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTRIGCmd-response)))
  "Returns full string definition for message of type 'SetTRIGCmd-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTRIGCmd-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTRIGCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTRIGCmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTRIGCmd)))
  'SetTRIGCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTRIGCmd)))
  'SetTRIGCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTRIGCmd)))
  "Returns string type for a service object of type '<SetTRIGCmd>"
  "dobot/SetTRIGCmd")