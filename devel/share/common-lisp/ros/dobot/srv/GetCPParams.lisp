; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetCPParams-request.msg.html

(cl:defclass <GetCPParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCPParams-request (<GetCPParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCPParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCPParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetCPParams-request> is deprecated: use dobot-srv:GetCPParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCPParams-request>) ostream)
  "Serializes a message object of type '<GetCPParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCPParams-request>) istream)
  "Deserializes a message object of type '<GetCPParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCPParams-request>)))
  "Returns string type for a service object of type '<GetCPParams-request>"
  "dobot/GetCPParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCPParams-request)))
  "Returns string type for a service object of type 'GetCPParams-request"
  "dobot/GetCPParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCPParams-request>)))
  "Returns md5sum for a message object of type '<GetCPParams-request>"
  "85dff81a44afbb98d15e48705b4ea806")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCPParams-request)))
  "Returns md5sum for a message object of type 'GetCPParams-request"
  "85dff81a44afbb98d15e48705b4ea806")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCPParams-request>)))
  "Returns full string definition for message of type '<GetCPParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCPParams-request)))
  "Returns full string definition for message of type 'GetCPParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCPParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCPParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCPParams-request
))
;//! \htmlinclude GetCPParams-response.msg.html

(cl:defclass <GetCPParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (planAcc
    :reader planAcc
    :initarg :planAcc
    :type cl:float
    :initform 0.0)
   (junctionVel
    :reader junctionVel
    :initarg :junctionVel
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0)
   (realTimeTrack
    :reader realTimeTrack
    :initarg :realTimeTrack
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetCPParams-response (<GetCPParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCPParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCPParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetCPParams-response> is deprecated: use dobot-srv:GetCPParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetCPParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'planAcc-val :lambda-list '(m))
(cl:defmethod planAcc-val ((m <GetCPParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:planAcc-val is deprecated.  Use dobot-srv:planAcc instead.")
  (planAcc m))

(cl:ensure-generic-function 'junctionVel-val :lambda-list '(m))
(cl:defmethod junctionVel-val ((m <GetCPParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:junctionVel-val is deprecated.  Use dobot-srv:junctionVel instead.")
  (junctionVel m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <GetCPParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:acc-val is deprecated.  Use dobot-srv:acc instead.")
  (acc m))

(cl:ensure-generic-function 'realTimeTrack-val :lambda-list '(m))
(cl:defmethod realTimeTrack-val ((m <GetCPParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:realTimeTrack-val is deprecated.  Use dobot-srv:realTimeTrack instead.")
  (realTimeTrack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCPParams-response>) ostream)
  "Serializes a message object of type '<GetCPParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'planAcc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'junctionVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'realTimeTrack)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCPParams-response>) istream)
  "Deserializes a message object of type '<GetCPParams-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'planAcc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'junctionVel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'realTimeTrack)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCPParams-response>)))
  "Returns string type for a service object of type '<GetCPParams-response>"
  "dobot/GetCPParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCPParams-response)))
  "Returns string type for a service object of type 'GetCPParams-response"
  "dobot/GetCPParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCPParams-response>)))
  "Returns md5sum for a message object of type '<GetCPParams-response>"
  "85dff81a44afbb98d15e48705b4ea806")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCPParams-response)))
  "Returns md5sum for a message object of type 'GetCPParams-response"
  "85dff81a44afbb98d15e48705b4ea806")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCPParams-response>)))
  "Returns full string definition for message of type '<GetCPParams-response>"
  (cl:format cl:nil "int32 result~%float32 planAcc~%float32 junctionVel~%float32 acc~%uint8 realTimeTrack~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCPParams-response)))
  "Returns full string definition for message of type 'GetCPParams-response"
  (cl:format cl:nil "int32 result~%float32 planAcc~%float32 junctionVel~%float32 acc~%uint8 realTimeTrack~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCPParams-response>))
  (cl:+ 0
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCPParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCPParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':planAcc (planAcc msg))
    (cl:cons ':junctionVel (junctionVel msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':realTimeTrack (realTimeTrack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCPParams)))
  'GetCPParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCPParams)))
  'GetCPParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCPParams)))
  "Returns string type for a service object of type '<GetCPParams>"
  "dobot/GetCPParams")