;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GimbalAngle)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GimbalAngle (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GIMBALANGLE")
  (make-package "ROBORTS_MSGS::GIMBALANGLE"))

(in-package "ROS")
;;//! \htmlinclude GimbalAngle.msg.html


(defclass roborts_msgs::GimbalAngle
  :super ros::object
  :slots (_yaw_mode _pitch_mode _yaw_angle _pitch_angle ))

(defmethod roborts_msgs::GimbalAngle
  (:init
   (&key
    ((:yaw_mode __yaw_mode) nil)
    ((:pitch_mode __pitch_mode) nil)
    ((:yaw_angle __yaw_angle) 0.0)
    ((:pitch_angle __pitch_angle) 0.0)
    )
   (send-super :init)
   (setq _yaw_mode __yaw_mode)
   (setq _pitch_mode __pitch_mode)
   (setq _yaw_angle (float __yaw_angle))
   (setq _pitch_angle (float __pitch_angle))
   self)
  (:yaw_mode
   (&optional (__yaw_mode :null))
   (if (not (eq __yaw_mode :null)) (setq _yaw_mode __yaw_mode)) _yaw_mode)
  (:pitch_mode
   (&optional (__pitch_mode :null))
   (if (not (eq __pitch_mode :null)) (setq _pitch_mode __pitch_mode)) _pitch_mode)
  (:yaw_angle
   (&optional __yaw_angle)
   (if __yaw_angle (setq _yaw_angle __yaw_angle)) _yaw_angle)
  (:pitch_angle
   (&optional __pitch_angle)
   (if __pitch_angle (setq _pitch_angle __pitch_angle)) _pitch_angle)
  (:serialization-length
   ()
   (+
    ;; bool _yaw_mode
    1
    ;; bool _pitch_mode
    1
    ;; float64 _yaw_angle
    8
    ;; float64 _pitch_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _yaw_mode
       (if _yaw_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _pitch_mode
       (if _pitch_mode (write-byte -1 s) (write-byte 0 s))
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_angle
       (sys::poke _pitch_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _yaw_mode
     (setq _yaw_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pitch_mode
     (setq _pitch_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_angle
     (setq _pitch_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roborts_msgs::GimbalAngle :md5sum-) "b3949b2683b910b23b0cb34879284a9b")
(setf (get roborts_msgs::GimbalAngle :datatype-) "roborts_msgs/GimbalAngle")
(setf (get roborts_msgs::GimbalAngle :definition-)
      "#gimbal feedback angle data
bool yaw_mode
bool pitch_mode
float64 yaw_angle
float64 pitch_angle

")



(provide :roborts_msgs/GimbalAngle "b3949b2683b910b23b0cb34879284a9b")


