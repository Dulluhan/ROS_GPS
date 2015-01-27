; Auto-generated. Do not edit!


(cl:in-package sb_msgs-msg)


;//! \htmlinclude jausout.msg.html

(cl:defclass <jausout> (roslisp-msg-protocol:ros-message)
  ((request_control
    :reader request_control
    :initarg :request_control
    :type cl:boolean
    :initform cl:nil)
   (request_resume
    :reader request_resume
    :initarg :request_resume
    :type cl:boolean
    :initform cl:nil)
   (request_standby
    :reader request_standby
    :initarg :request_standby
    :type cl:boolean
    :initform cl:nil)
   (request_shutdown
    :reader request_shutdown
    :initarg :request_shutdown
    :type cl:boolean
    :initform cl:nil)
   (execute_waypoints
    :reader execute_waypoints
    :initarg :execute_waypoints
    :type cl:boolean
    :initform cl:nil)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (set_waypoints
    :reader set_waypoints
    :initarg :set_waypoints
    :type cl:boolean
    :initform cl:nil)
   (set_local_pose
    :reader set_local_pose
    :initarg :set_local_pose
    :type cl:boolean
    :initform cl:nil)
   (waypoint_id
    :reader waypoint_id
    :initarg :waypoint_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (waypoint_previous_id
    :reader waypoint_previous_id
    :initarg :waypoint_previous_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (waypoint_next_id
    :reader waypoint_next_id
    :initarg :waypoint_next_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (waypoint_pose_x
    :reader waypoint_pose_x
    :initarg :waypoint_pose_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (waypoint_pose_y
    :reader waypoint_pose_y
    :initarg :waypoint_pose_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pose_yaw
    :reader pose_yaw
    :initarg :pose_yaw
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass jausout (<jausout>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jausout>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jausout)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sb_msgs-msg:<jausout> is deprecated: use sb_msgs-msg:jausout instead.")))

(cl:ensure-generic-function 'request_control-val :lambda-list '(m))
(cl:defmethod request_control-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:request_control-val is deprecated.  Use sb_msgs-msg:request_control instead.")
  (request_control m))

(cl:ensure-generic-function 'request_resume-val :lambda-list '(m))
(cl:defmethod request_resume-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:request_resume-val is deprecated.  Use sb_msgs-msg:request_resume instead.")
  (request_resume m))

(cl:ensure-generic-function 'request_standby-val :lambda-list '(m))
(cl:defmethod request_standby-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:request_standby-val is deprecated.  Use sb_msgs-msg:request_standby instead.")
  (request_standby m))

(cl:ensure-generic-function 'request_shutdown-val :lambda-list '(m))
(cl:defmethod request_shutdown-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:request_shutdown-val is deprecated.  Use sb_msgs-msg:request_shutdown instead.")
  (request_shutdown m))

(cl:ensure-generic-function 'execute_waypoints-val :lambda-list '(m))
(cl:defmethod execute_waypoints-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:execute_waypoints-val is deprecated.  Use sb_msgs-msg:execute_waypoints instead.")
  (execute_waypoints m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:speed-val is deprecated.  Use sb_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'set_waypoints-val :lambda-list '(m))
(cl:defmethod set_waypoints-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:set_waypoints-val is deprecated.  Use sb_msgs-msg:set_waypoints instead.")
  (set_waypoints m))

(cl:ensure-generic-function 'set_local_pose-val :lambda-list '(m))
(cl:defmethod set_local_pose-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:set_local_pose-val is deprecated.  Use sb_msgs-msg:set_local_pose instead.")
  (set_local_pose m))

(cl:ensure-generic-function 'waypoint_id-val :lambda-list '(m))
(cl:defmethod waypoint_id-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:waypoint_id-val is deprecated.  Use sb_msgs-msg:waypoint_id instead.")
  (waypoint_id m))

(cl:ensure-generic-function 'waypoint_previous_id-val :lambda-list '(m))
(cl:defmethod waypoint_previous_id-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:waypoint_previous_id-val is deprecated.  Use sb_msgs-msg:waypoint_previous_id instead.")
  (waypoint_previous_id m))

(cl:ensure-generic-function 'waypoint_next_id-val :lambda-list '(m))
(cl:defmethod waypoint_next_id-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:waypoint_next_id-val is deprecated.  Use sb_msgs-msg:waypoint_next_id instead.")
  (waypoint_next_id m))

(cl:ensure-generic-function 'waypoint_pose_x-val :lambda-list '(m))
(cl:defmethod waypoint_pose_x-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:waypoint_pose_x-val is deprecated.  Use sb_msgs-msg:waypoint_pose_x instead.")
  (waypoint_pose_x m))

(cl:ensure-generic-function 'waypoint_pose_y-val :lambda-list '(m))
(cl:defmethod waypoint_pose_y-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:waypoint_pose_y-val is deprecated.  Use sb_msgs-msg:waypoint_pose_y instead.")
  (waypoint_pose_y m))

(cl:ensure-generic-function 'pose_yaw-val :lambda-list '(m))
(cl:defmethod pose_yaw-val ((m <jausout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sb_msgs-msg:pose_yaw-val is deprecated.  Use sb_msgs-msg:pose_yaw instead.")
  (pose_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jausout>) ostream)
  "Serializes a message object of type '<jausout>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request_control) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request_resume) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request_standby) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request_shutdown) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'execute_waypoints) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_waypoints) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_local_pose) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoint_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'waypoint_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoint_previous_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'waypoint_previous_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoint_next_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'waypoint_next_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoint_pose_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'waypoint_pose_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoint_pose_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'waypoint_pose_y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pose_yaw))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jausout>) istream)
  "Deserializes a message object of type '<jausout>"
    (cl:setf (cl:slot-value msg 'request_control) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'request_resume) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'request_standby) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'request_shutdown) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'execute_waypoints) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'set_waypoints) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_local_pose) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoint_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoint_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoint_previous_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoint_previous_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoint_next_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoint_next_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoint_pose_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoint_pose_x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoint_pose_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoint_pose_y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_yaw) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_yaw)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jausout>)))
  "Returns string type for a message object of type '<jausout>"
  "sb_msgs/jausout")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jausout)))
  "Returns string type for a message object of type 'jausout"
  "sb_msgs/jausout")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jausout>)))
  "Returns md5sum for a message object of type '<jausout>"
  "01898af3e2cf8253a92a72b79e09e3b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jausout)))
  "Returns md5sum for a message object of type 'jausout"
  "01898af3e2cf8253a92a72b79e09e3b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jausout>)))
  "Returns full string definition for message of type '<jausout>"
  (cl:format cl:nil "bool request_control~%bool request_resume~%bool request_standby~%bool request_shutdown~%bool execute_waypoints~%float64 speed~%bool set_waypoints~%bool set_local_pose~%uint16[] waypoint_id~%uint16[] waypoint_previous_id~%uint16[] waypoint_next_id~%float64[] waypoint_pose_x~%float64[] waypoint_pose_y~%float64[] pose_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jausout)))
  "Returns full string definition for message of type 'jausout"
  (cl:format cl:nil "bool request_control~%bool request_resume~%bool request_standby~%bool request_shutdown~%bool execute_waypoints~%float64 speed~%bool set_waypoints~%bool set_local_pose~%uint16[] waypoint_id~%uint16[] waypoint_previous_id~%uint16[] waypoint_next_id~%float64[] waypoint_pose_x~%float64[] waypoint_pose_y~%float64[] pose_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jausout>))
  (cl:+ 0
     1
     1
     1
     1
     1
     8
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoint_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoint_previous_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoint_next_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoint_pose_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoint_pose_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_yaw) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jausout>))
  "Converts a ROS message object to a list"
  (cl:list 'jausout
    (cl:cons ':request_control (request_control msg))
    (cl:cons ':request_resume (request_resume msg))
    (cl:cons ':request_standby (request_standby msg))
    (cl:cons ':request_shutdown (request_shutdown msg))
    (cl:cons ':execute_waypoints (execute_waypoints msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':set_waypoints (set_waypoints msg))
    (cl:cons ':set_local_pose (set_local_pose msg))
    (cl:cons ':waypoint_id (waypoint_id msg))
    (cl:cons ':waypoint_previous_id (waypoint_previous_id msg))
    (cl:cons ':waypoint_next_id (waypoint_next_id msg))
    (cl:cons ':waypoint_pose_x (waypoint_pose_x msg))
    (cl:cons ':waypoint_pose_y (waypoint_pose_y msg))
    (cl:cons ':pose_yaw (pose_yaw msg))
))
