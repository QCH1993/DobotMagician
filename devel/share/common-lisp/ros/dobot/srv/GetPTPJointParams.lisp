; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetPTPJointParams-request.msg.html

(cl:defclass <GetPTPJointParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPTPJointParams-request (<GetPTPJointParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPJointParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPJointParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPJointParams-request> is deprecated: use dobot-srv:GetPTPJointParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPJointParams-request>) ostream)
  "Serializes a message object of type '<GetPTPJointParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPJointParams-request>) istream)
  "Deserializes a message object of type '<GetPTPJointParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPJointParams-request>)))
  "Returns string type for a service object of type '<GetPTPJointParams-request>"
  "dobot/GetPTPJointParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPJointParams-request)))
  "Returns string type for a service object of type 'GetPTPJointParams-request"
  "dobot/GetPTPJointParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPJointParams-request>)))
  "Returns md5sum for a message object of type '<GetPTPJointParams-request>"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPJointParams-request)))
  "Returns md5sum for a message object of type 'GetPTPJointParams-request"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPJointParams-request>)))
  "Returns full string definition for message of type '<GetPTPJointParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPJointParams-request)))
  "Returns full string definition for message of type 'GetPTPJointParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPJointParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPJointParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPJointParams-request
))
;//! \htmlinclude GetPTPJointParams-response.msg.html

(cl:defclass <GetPTPJointParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetPTPJointParams-response (<GetPTPJointParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPJointParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPJointParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPJointParams-response> is deprecated: use dobot-srv:GetPTPJointParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetPTPJointParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GetPTPJointParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:velocity-val is deprecated.  Use dobot-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <GetPTPJointParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:acceleration-val is deprecated.  Use dobot-srv:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPJointParams-response>) ostream)
  "Serializes a message object of type '<GetPTPJointParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPJointParams-response>) istream)
  "Deserializes a message object of type '<GetPTPJointParams-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPJointParams-response>)))
  "Returns string type for a service object of type '<GetPTPJointParams-response>"
  "dobot/GetPTPJointParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPJointParams-response)))
  "Returns string type for a service object of type 'GetPTPJointParams-response"
  "dobot/GetPTPJointParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPJointParams-response>)))
  "Returns md5sum for a message object of type '<GetPTPJointParams-response>"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPJointParams-response)))
  "Returns md5sum for a message object of type 'GetPTPJointParams-response"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPJointParams-response>)))
  "Returns full string definition for message of type '<GetPTPJointParams-response>"
  (cl:format cl:nil "int32 result~%float32[] velocity~%float32[] acceleration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPJointParams-response)))
  "Returns full string definition for message of type 'GetPTPJointParams-response"
  (cl:format cl:nil "int32 result~%float32[] velocity~%float32[] acceleration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPJointParams-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPJointParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPJointParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPTPJointParams)))
  'GetPTPJointParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPTPJointParams)))
  'GetPTPJointParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPJointParams)))
  "Returns string type for a service object of type '<GetPTPJointParams>"
  "dobot/GetPTPJointParams")