;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::RobotStatus)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'RobotStatus (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ROBOTSTATUS")
  (make-package "ROBORTS_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass roborts_msgs::RobotStatus
  :super ros::object
  :slots (_id _level _remain_hp _max_hp _heat_cooling_rate _heat_cooling_limit _heat_speed_limit _gimbal_enable _chassis_enable _shooter_enable ))

(defmethod roborts_msgs::RobotStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:level __level) 0)
    ((:remain_hp __remain_hp) 0)
    ((:max_hp __max_hp) 0)
    ((:heat_cooling_rate __heat_cooling_rate) 0)
    ((:heat_cooling_limit __heat_cooling_limit) 0)
    ((:heat_speed_limit __heat_speed_limit) 0)
    ((:gimbal_enable __gimbal_enable) nil)
    ((:chassis_enable __chassis_enable) nil)
    ((:shooter_enable __shooter_enable) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _level (round __level))
   (setq _remain_hp (round __remain_hp))
   (setq _max_hp (round __max_hp))
   (setq _heat_cooling_rate (round __heat_cooling_rate))
   (setq _heat_cooling_limit (round __heat_cooling_limit))
   (setq _heat_speed_limit (round __heat_speed_limit))
   (setq _gimbal_enable __gimbal_enable)
   (setq _chassis_enable __chassis_enable)
   (setq _shooter_enable __shooter_enable)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:remain_hp
   (&optional __remain_hp)
   (if __remain_hp (setq _remain_hp __remain_hp)) _remain_hp)
  (:max_hp
   (&optional __max_hp)
   (if __max_hp (setq _max_hp __max_hp)) _max_hp)
  (:heat_cooling_rate
   (&optional __heat_cooling_rate)
   (if __heat_cooling_rate (setq _heat_cooling_rate __heat_cooling_rate)) _heat_cooling_rate)
  (:heat_cooling_limit
   (&optional __heat_cooling_limit)
   (if __heat_cooling_limit (setq _heat_cooling_limit __heat_cooling_limit)) _heat_cooling_limit)
  (:heat_speed_limit
   (&optional __heat_speed_limit)
   (if __heat_speed_limit (setq _heat_speed_limit __heat_speed_limit)) _heat_speed_limit)
  (:gimbal_enable
   (&optional (__gimbal_enable :null))
   (if (not (eq __gimbal_enable :null)) (setq _gimbal_enable __gimbal_enable)) _gimbal_enable)
  (:chassis_enable
   (&optional (__chassis_enable :null))
   (if (not (eq __chassis_enable :null)) (setq _chassis_enable __chassis_enable)) _chassis_enable)
  (:shooter_enable
   (&optional (__shooter_enable :null))
   (if (not (eq __shooter_enable :null)) (setq _shooter_enable __shooter_enable)) _shooter_enable)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _level
    1
    ;; uint16 _remain_hp
    2
    ;; uint16 _max_hp
    2
    ;; uint16 _heat_cooling_rate
    2
    ;; uint16 _heat_cooling_limit
    2
    ;; uint16 _heat_speed_limit
    2
    ;; bool _gimbal_enable
    1
    ;; bool _chassis_enable
    1
    ;; bool _shooter_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _level
       (write-byte _level s)
     ;; uint16 _remain_hp
       (write-word _remain_hp s)
     ;; uint16 _max_hp
       (write-word _max_hp s)
     ;; uint16 _heat_cooling_rate
       (write-word _heat_cooling_rate s)
     ;; uint16 _heat_cooling_limit
       (write-word _heat_cooling_limit s)
     ;; uint16 _heat_speed_limit
       (write-word _heat_speed_limit s)
     ;; bool _gimbal_enable
       (if _gimbal_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _chassis_enable
       (if _chassis_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _shooter_enable
       (if _shooter_enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _remain_hp
     (setq _remain_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _max_hp
     (setq _max_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _heat_cooling_rate
     (setq _heat_cooling_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _heat_cooling_limit
     (setq _heat_cooling_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _heat_speed_limit
     (setq _heat_speed_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _gimbal_enable
     (setq _gimbal_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _chassis_enable
     (setq _chassis_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _shooter_enable
     (setq _shooter_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborts_msgs::RobotStatus :md5sum-) "e4295b144c261ec35e3a477c577c8639")
(setf (get roborts_msgs::RobotStatus :datatype-) "roborts_msgs/RobotStatus")
(setf (get roborts_msgs::RobotStatus :definition-)
      "#robot status
uint8 id
uint8 level
uint16 remain_hp
uint16 max_hp

uint16 heat_cooling_rate
uint16 heat_cooling_limit
uint16 heat_speed_limit

bool gimbal_enable
bool chassis_enable
bool shooter_enable
")



(provide :roborts_msgs/RobotStatus "e4295b144c261ec35e3a477c577c8639")


