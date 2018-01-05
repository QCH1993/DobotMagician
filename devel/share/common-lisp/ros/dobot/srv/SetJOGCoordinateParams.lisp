; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetJOGCoordinateParams-request.msg.html

(cl:defclass <SetJOGCoordinateParams-request> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetJOGCoordinateParams-request (<SetJOGCoordinateParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJOGCoordinateParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJOGCoordinateParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetJOGCoordinateParams-request> is deprecated: use dobot-srv:SetJOGCoordinateParams-request instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SetJOGCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:velocity-val is deprecated.  Use dobot-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <SetJOGCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:acceleration-val is deprecated.  Use dobot-srv:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetJOGCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJOGCoordinateParams-request>) ostream)
  "Serializes a message object of type '<SetJOGCoordinateParams-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'acceleration))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJOGCoordinateParams-request>) istream)
  "Deserializes a message object of type '<SetJOGCoordinateParams-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acceleration) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acceleration)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJOGCoordinateParams-request>)))
  "Returns string type for a service object of type '<SetJOGCoordinateParams-request>"
  "dobot/SetJOGCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCoordinateParams-request)))
  "Returns string type for a service object of type 'SetJOGCoordinateParams-request"
  "dobot/SetJOGCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJOGCoordinateParams-request>)))
  "Returns md5sum for a message object of type '<SetJOGCoordinateParams-request>"
  "66026db026b6b1016fb4eccdf054b1ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJOGCoordinateParams-request)))
  "Returns md5sum for a message object of type 'SetJOGCoordinateParams-request"
  "66026db026b6b1016fb4eccdf054b1ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJOGCoordinateParams-request>)))
  "Returns full string definition for message of type '<SetJOGCoordinateParams-request>"
  (cl:format cl:nil "float32[] velocity~%float32[] acceleration~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJOGCoordinateParams-request)))
  "Returns full string definition for message of type 'SetJOGCoordinateParams-request"
  (cl:format cl:nil "float32[] velocity~%float32[] acceleration~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJOGCoordinateParams-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJOGCoordinateParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJOGCoordinateParams-request
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetJOGCoordinateParams-response.msg.html

(cl:defclass <SetJOGCoordinateParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJOGCoordinateParams-response (<SetJOGCoordinateParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJOGCoordinateParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJOGCoordinateParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetJOGCoordinateParams-response> is deprecated: use dobot-srv:SetJOGCoordinateParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetJOGCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetJOGCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJOGCoordinateParams-response>) ostream)
  "Serializes a message object of type '<SetJOGCoordinateParams-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJOGCoordinateParams-response>) istream)
  "Deserializes a message object of type '<SetJOGCoordinateParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJOGCoordinateParams-response>)))
  "Returns string type for a service object of type '<SetJOGCoordinateParams-response>"
  "dobot/SetJOGCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCoordinateParams-response)))
  "Returns string type for a service object of type 'SetJOGCoordinateParams-response"
  "dobot/SetJOGCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJOGCoordinateParams-response>)))
  "Returns md5sum for a message object of type '<SetJOGCoordinateParams-response>"
  "66026db026b6b1016fb4eccdf054b1ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJOGCoordinateParams-response)))
  "Returns md5sum for a message object of type 'SetJOGCoordinateParams-response"
  "66026db026b6b1016fb4eccdf054b1ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJOGCoordinateParams-response>)))
  "Returns full string definition for message of type '<SetJOGCoordinateParams-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJOGCoordinateParams-response)))
  "Returns full string definition for message of type 'SetJOGCoordinateParams-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJOGCoordinateParams-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJOGCoordinateParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJOGCoordinateParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJOGCoordinateParams)))
  'SetJOGCoordinateParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJOGCoordinateParams)))
  'SetJOGCoordinateParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCoordinateParams)))
  "Returns string type for a service object of type '<SetJOGCoordinateParams>"
  "dobot/SetJOGCoordinateParams")