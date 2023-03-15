;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GameRobotBullet)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GameRobotBullet (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GAMEROBOTBULLET")
  (make-package "ROBORTS_MSGS::GAMEROBOTBULLET"))

(in-package "ROS")
;;//! \htmlinclude GameRobotBullet.msg.html


(defclass roborts_msgs::GameRobotBullet
  :super ros::object
  :slots (_red1 _red2 _blue1 _blue2 ))

(defmethod roborts_msgs::GameRobotBullet
  (:init
   (&key
    ((:red1 __red1) 0)
    ((:red2 __red2) 0)
    ((:blue1 __blue1) 0)
    ((:blue2 __blue2) 0)
    )
   (send-super :init)
   (setq _red1 (round __red1))
   (setq _red2 (round __red2))
   (setq _blue1 (round __blue1))
   (setq _blue2 (round __blue2))
   self)
  (:red1
   (&optional __red1)
   (if __red1 (setq _red1 __red1)) _red1)
  (:red2
   (&optional __red2)
   (if __red2 (setq _red2 __red2)) _red2)
  (:blue1
   (&optional __blue1)
   (if __blue1 (setq _blue1 __blue1)) _blue1)
  (:blue2
   (&optional __blue2)
   (if __blue2 (setq _blue2 __blue2)) _blue2)
  (:serialization-length
   ()
   (+
    ;; uint16 _red1
    2
    ;; uint16 _red2
    2
    ;; uint16 _blue1
    2
    ;; uint16 _blue2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _red1
       (write-word _red1 s)
     ;; uint16 _red2
       (write-word _red2 s)
     ;; uint16 _blue1
       (write-word _blue1 s)
     ;; uint16 _blue2
       (write-word _blue2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _red1
     (setq _red1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _red2
     (setq _red2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue1
     (setq _blue1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue2
     (setq _blue2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get roborts_msgs::GameRobotBullet :md5sum-) "fdaec03d4604469fd40ee7049d826d6e")
(setf (get roborts_msgs::GameRobotBullet :datatype-) "roborts_msgs/GameRobotBullet")
(setf (get roborts_msgs::GameRobotBullet :definition-)
      "#game robot bullet
uint16 red1
uint16 red2
uint16 blue1
uint16 blue2
")



(provide :roborts_msgs/GameRobotBullet "fdaec03d4604469fd40ee7049d826d6e")


