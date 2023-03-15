;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GameResult)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GameResult (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GAMERESULT")
  (make-package "ROBORTS_MSGS::GAMERESULT"))

(in-package "ROS")
;;//! \htmlinclude GameResult.msg.html


(intern "*DRAW*" (find-package "ROBORTS_MSGS::GAMERESULT"))
(shadow '*DRAW* (find-package "ROBORTS_MSGS::GAMERESULT"))
(defconstant roborts_msgs::GameResult::*DRAW* 0)
(intern "*RED_WIN*" (find-package "ROBORTS_MSGS::GAMERESULT"))
(shadow '*RED_WIN* (find-package "ROBORTS_MSGS::GAMERESULT"))
(defconstant roborts_msgs::GameResult::*RED_WIN* 1)
(intern "*BLUE_WIN*" (find-package "ROBORTS_MSGS::GAMERESULT"))
(shadow '*BLUE_WIN* (find-package "ROBORTS_MSGS::GAMERESULT"))
(defconstant roborts_msgs::GameResult::*BLUE_WIN* 2)

(defun roborts_msgs::GameResult-to-symbol (const)
  (cond
        ((= const 0) 'roborts_msgs::GameResult::*DRAW*)
        ((= const 1) 'roborts_msgs::GameResult::*RED_WIN*)
        ((= const 2) 'roborts_msgs::GameResult::*BLUE_WIN*)
        (t nil)))

(defclass roborts_msgs::GameResult
  :super ros::object
  :slots (_result ))

(defmethod roborts_msgs::GameResult
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborts_msgs::GameResult :md5sum-) "4d09240fdf4519a3920c8056c8354c3d")
(setf (get roborts_msgs::GameResult :datatype-) "roborts_msgs/GameResult")
(setf (get roborts_msgs::GameResult :definition-)
      "#game result
uint8  DRAW=0
uint8  RED_WIN=1
uint8  BLUE_WIN=2
uint8  result

")



(provide :roborts_msgs/GameResult "4d09240fdf4519a3920c8056c8354c3d")


