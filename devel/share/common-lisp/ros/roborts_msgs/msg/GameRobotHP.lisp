; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude GameRobotHP.msg.html

(cl:defclass <GameRobotHP> (roslisp-msg-protocol:ros-message)
  ((red1
    :reader red1
    :initarg :red1
    :type cl:fixnum
    :initform 0)
   (red2
    :reader red2
    :initarg :red2
    :type cl:fixnum
    :initform 0)
   (blue1
    :reader blue1
    :initarg :blue1
    :type cl:fixnum
    :initform 0)
   (blue2
    :reader blue2
    :initarg :blue2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GameRobotHP (<GameRobotHP>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameRobotHP>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameRobotHP)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<GameRobotHP> is deprecated: use roborts_msgs-msg:GameRobotHP instead.")))

(cl:ensure-generic-function 'red1-val :lambda-list '(m))
(cl:defmethod red1-val ((m <GameRobotHP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:red1-val is deprecated.  Use roborts_msgs-msg:red1 instead.")
  (red1 m))

(cl:ensure-generic-function 'red2-val :lambda-list '(m))
(cl:defmethod red2-val ((m <GameRobotHP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:red2-val is deprecated.  Use roborts_msgs-msg:red2 instead.")
  (red2 m))

(cl:ensure-generic-function 'blue1-val :lambda-list '(m))
(cl:defmethod blue1-val ((m <GameRobotHP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:blue1-val is deprecated.  Use roborts_msgs-msg:blue1 instead.")
  (blue1 m))

(cl:ensure-generic-function 'blue2-val :lambda-list '(m))
(cl:defmethod blue2-val ((m <GameRobotHP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:blue2-val is deprecated.  Use roborts_msgs-msg:blue2 instead.")
  (blue2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameRobotHP>) ostream)
  "Serializes a message object of type '<GameRobotHP>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameRobotHP>) istream)
  "Deserializes a message object of type '<GameRobotHP>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameRobotHP>)))
  "Returns string type for a message object of type '<GameRobotHP>"
  "roborts_msgs/GameRobotHP")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameRobotHP)))
  "Returns string type for a message object of type 'GameRobotHP"
  "roborts_msgs/GameRobotHP")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameRobotHP>)))
  "Returns md5sum for a message object of type '<GameRobotHP>"
  "fdaec03d4604469fd40ee7049d826d6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameRobotHP)))
  "Returns md5sum for a message object of type 'GameRobotHP"
  "fdaec03d4604469fd40ee7049d826d6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameRobotHP>)))
  "Returns full string definition for message of type '<GameRobotHP>"
  (cl:format cl:nil "#game robot hp~%uint16 red1~%uint16 red2~%uint16 blue1~%uint16 blue2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameRobotHP)))
  "Returns full string definition for message of type 'GameRobotHP"
  (cl:format cl:nil "#game robot hp~%uint16 red1~%uint16 red2~%uint16 blue1~%uint16 blue2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameRobotHP>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameRobotHP>))
  "Converts a ROS message object to a list"
  (cl:list 'GameRobotHP
    (cl:cons ':red1 (red1 msg))
    (cl:cons ':red2 (red2 msg))
    (cl:cons ':blue1 (blue1 msg))
    (cl:cons ':blue2 (blue2 msg))
))
