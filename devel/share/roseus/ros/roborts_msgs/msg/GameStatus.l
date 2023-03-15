;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GameStatus)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GameStatus (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GAMESTATUS")
  (make-package "ROBORTS_MSGS::GAMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude GameStatus.msg.html


(intern "*READY*" (find-package "ROBORTS_MSGS::GAMESTATUS"))
(shadow '*READY* (find-package "ROBORTS_MSGS::GAMESTATUS"))
(defconstant roborts_msgs::GameStatus::*READY* 0)
(intern "*PREPARATION*" (find-package "ROBORTS_MSGS::GAMESTATUS"))
(shadow '*PREPARATION* (find-package "ROBORTS_MSGS::GAMESTATUS"))
(defconstant roborts_msgs::GameStatus::*PREPARATION* 1)
(intern "*INITIALIZE*" (find-package "ROBORTS_MSGS::GAMESTATUS"))
(shadow '*INITIALIZE* (find-package "ROBORTS_MSGS::GAMESTATUS"))
(defconstant roborts_msgs::GameStatus::*INITIALIZE* 2)
(intern "*FIVE_SEC_CD*" (find-package "ROBORTS_MSGS::GAMESTATUS"))
(shadow '*FIVE_SEC_CD* (find-package "ROBORTS_MSGS::GAMESTATUS"))
(defconstant roborts_msgs::GameStatus::*FIVE_SEC_CD* 3)
(intern "*GAME*" (find-package "ROBORTS_MSGS::GAMESTATUS"))
(shadow '*GAME* (find-package "ROBORTS_MSGS::GAMESTATUS"))
(defconstant roborts_msgs::GameStatus::*GAME* 4)
(intern "*END*" (find-package "ROBORTS_MSGS::GAMESTATUS"))
(shadow '*END* (find-package "ROBORTS_MSGS::GAMESTATUS"))
(defconstant roborts_msgs::GameStatus::*END* 5)

(defun roborts_msgs::GameStatus-to-symbol (const)
  (cond
        ((= const 0) 'roborts_msgs::GameStatus::*READY*)
        ((= const 1) 'roborts_msgs::GameStatus::*PREPARATION*)
        ((= const 2) 'roborts_msgs::GameStatus::*INITIALIZE*)
        ((= const 3) 'roborts_msgs::GameStatus::*FIVE_SEC_CD*)
        ((= const 4) 'roborts_msgs::GameStatus::*GAME*)
        ((= const 5) 'roborts_msgs::GameStatus::*END*)
        (t nil)))

(defclass roborts_msgs::GameStatus
  :super ros::object
  :slots (_game_status _remaining_time ))

(defmethod roborts_msgs::GameStatus
  (:init
   (&key
    ((:game_status __game_status) 0)
    ((:remaining_time __remaining_time) 0)
    )
   (send-super :init)
   (setq _game_status (round __game_status))
   (setq _remaining_time (round __remaining_time))
   self)
  (:game_status
   (&optional __game_status)
   (if __game_status (setq _game_status __game_status)) _game_status)
  (:remaining_time
   (&optional __remaining_time)
   (if __remaining_time (setq _remaining_time __remaining_time)) _remaining_time)
  (:serialization-length
   ()
   (+
    ;; uint8 _game_status
    1
    ;; uint16 _remaining_time
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _game_status
       (write-byte _game_status s)
     ;; uint16 _remaining_time
       (write-word _remaining_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _game_status
     (setq _game_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _remaining_time
     (setq _remaining_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get roborts_msgs::GameStatus :md5sum-) "4142ff16620ea57f9d5525a12e2d2b28")
(setf (get roborts_msgs::GameStatus :datatype-) "roborts_msgs/GameStatus")
(setf (get roborts_msgs::GameStatus :definition-)
      "#game status
uint8 READY = 0
uint8 PREPARATION = 1
uint8 INITIALIZE = 2
uint8 FIVE_SEC_CD = 3
uint8 GAME = 4
uint8 END = 5
uint8 game_status
uint16 remaining_time




")



(provide :roborts_msgs/GameStatus "4142ff16620ea57f9d5525a12e2d2b28")


