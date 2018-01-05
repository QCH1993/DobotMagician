; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetJOGCoordinateParams-request.msg.html

(cl:defclass <GetJOGCoordinateParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetJOGCoordinateParams-request (<GetJOGCoordinateParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJOGCoordinateParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJOGCoordinateParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetJOGCoordinateParams-request> is deprecated: use dobot-srv:GetJOGCoordinateParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJOGCoordinateParams-request>) ostream)
  "Serializes a message object of type '<GetJOGCoordinateParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJOGCoordinateParams-request>) istream)
  "Deserializes a message object of type '<GetJOGCoordinateParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJOGCoordinateParams-request>)))
  "Returns string type for a service object of type '<GetJOGCoordinateParams-request>"
  "dobot/GetJOGCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJOGCoordinateParams-request)))
  "Returns string type for a service object of type 'GetJOGCoordinateParams-request"
  "dobot/GetJOGCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJOGCoordinateParams-request>)))
  "Returns md5sum for a message object of type '<GetJOGCoordinateParams-request>"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJOGCoordinateParams-request)))
  "Returns md5sum for a message object of type 'GetJOGCoordinateParams-request"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJOGCoordinateParams-request>)))
  "Returns full string definition for message of type '<GetJOGCoordinateParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJOGCoordinateParams-request)))
  "Returns full string definition for message of type 'GetJOGCoordinateParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJOGCoordinateParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJOGCoordinateParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJOGCoordinateParams-request
))
;//! \htmlinclude GetJOGCoordinateParams-response.msg.html

(cl:defclass <GetJOGCoordinateParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetJOGCoordinateParams-response (<GetJOGCoordinateParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJOGCoordinateParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJOGCoordinateParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetJOGCoordinateParams-response> is deprecated: use dobot-srv:GetJOGCoordinateParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetJOGCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GetJOGCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:velocity-val is deprecated.  Use dobot-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <GetJOGCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:acceleration-val is deprecated.  Use dobot-srv:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJOGCoordinateParams-response>) ostream)
  "Serializes a message object of type '<GetJOGCoordinateParams-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJOGCoordinateParams-response>) istream)
  "Deserializes a message object of type '<GetJOGCoordinateParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJOGCoordinateParams-response>)))
  "Returns string type for a service object of type '<GetJOGCoordinateParams-response>"
  "dobot/GetJOGCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJOGCoordinateParams-response)))
  "Returns string type for a service object of type 'GetJOGCoordinateParams-response"
  "dobot/GetJOGCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJOGCoordinateParams-response>)))
  "Returns md5sum for a message object of type '<GetJOGCoordinateParams-response>"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJOGCoordinateParams-response)))
  "Returns md5sum for a message object of type 'GetJOGCoordinateParams-response"
  "46bf5bf78db0edaa99dd346e0307937e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJOGCoordinateParams-response>)))
  "Returns full string definition for message of type '<GetJOGCoordinateParams-response>"
  (cl:format cl:nil "int32 result~%float32[] velocity~%float32[] acceleration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJOGCoordinateParams-response)))
  "Returns full string definition for message of type 'GetJOGCoordinateParams-response"
  (cl:format cl:nil "int32 result~%float32[] velocity~%float32[] acceleration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJOGCoordinateParams-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJOGCoordinateParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJOGCoordinateParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJOGCoordinateParams)))
  'GetJOGCoordinateParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJOGCoordinateParams)))
  'GetJOGCoordinateParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJOGCoordinateParams)))
  "Returns string type for a service object of type '<GetJOGCoordinateParams>"
  "dobot/GetJOGCoordinateParams")