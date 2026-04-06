// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class node_detected_xyzyaw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.self_drone_id = null;
      this.remote_drone_id = null;
      this.dpos = null;
      this.dpos_std = null;
      this.dyaw = null;
      this.dyaw_cov = null;
      this.enable_scale = null;
      this.is_yaw_valid = null;
      this.probaility = null;
      this.inv_dep = null;
      this.local_pose_self = null;
      this.local_pose_remote = null;
      this.camera_extrinsic = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('self_drone_id')) {
        this.self_drone_id = initObj.self_drone_id
      }
      else {
        this.self_drone_id = 0;
      }
      if (initObj.hasOwnProperty('remote_drone_id')) {
        this.remote_drone_id = initObj.remote_drone_id
      }
      else {
        this.remote_drone_id = 0;
      }
      if (initObj.hasOwnProperty('dpos')) {
        this.dpos = initObj.dpos
      }
      else {
        this.dpos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('dpos_std')) {
        this.dpos_std = initObj.dpos_std
      }
      else {
        this.dpos_std = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('dyaw')) {
        this.dyaw = initObj.dyaw
      }
      else {
        this.dyaw = 0.0;
      }
      if (initObj.hasOwnProperty('dyaw_cov')) {
        this.dyaw_cov = initObj.dyaw_cov
      }
      else {
        this.dyaw_cov = 0.0;
      }
      if (initObj.hasOwnProperty('enable_scale')) {
        this.enable_scale = initObj.enable_scale
      }
      else {
        this.enable_scale = false;
      }
      if (initObj.hasOwnProperty('is_yaw_valid')) {
        this.is_yaw_valid = initObj.is_yaw_valid
      }
      else {
        this.is_yaw_valid = false;
      }
      if (initObj.hasOwnProperty('probaility')) {
        this.probaility = initObj.probaility
      }
      else {
        this.probaility = 0.0;
      }
      if (initObj.hasOwnProperty('inv_dep')) {
        this.inv_dep = initObj.inv_dep
      }
      else {
        this.inv_dep = 0.0;
      }
      if (initObj.hasOwnProperty('local_pose_self')) {
        this.local_pose_self = initObj.local_pose_self
      }
      else {
        this.local_pose_self = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('local_pose_remote')) {
        this.local_pose_remote = initObj.local_pose_remote
      }
      else {
        this.local_pose_remote = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('camera_extrinsic')) {
        this.camera_extrinsic = initObj.camera_extrinsic
      }
      else {
        this.camera_extrinsic = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_detected_xyzyaw
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [self_drone_id]
    bufferOffset = _serializer.int32(obj.self_drone_id, buffer, bufferOffset);
    // Serialize message field [remote_drone_id]
    bufferOffset = _serializer.int32(obj.remote_drone_id, buffer, bufferOffset);
    // Serialize message field [dpos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.dpos, buffer, bufferOffset);
    // Serialize message field [dpos_std]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.dpos_std, buffer, bufferOffset);
    // Serialize message field [dyaw]
    bufferOffset = _serializer.float64(obj.dyaw, buffer, bufferOffset);
    // Serialize message field [dyaw_cov]
    bufferOffset = _serializer.float64(obj.dyaw_cov, buffer, bufferOffset);
    // Serialize message field [enable_scale]
    bufferOffset = _serializer.bool(obj.enable_scale, buffer, bufferOffset);
    // Serialize message field [is_yaw_valid]
    bufferOffset = _serializer.bool(obj.is_yaw_valid, buffer, bufferOffset);
    // Serialize message field [probaility]
    bufferOffset = _serializer.float64(obj.probaility, buffer, bufferOffset);
    // Serialize message field [inv_dep]
    bufferOffset = _serializer.float64(obj.inv_dep, buffer, bufferOffset);
    // Serialize message field [local_pose_self]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.local_pose_self, buffer, bufferOffset);
    // Serialize message field [local_pose_remote]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.local_pose_remote, buffer, bufferOffset);
    // Serialize message field [camera_extrinsic]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.camera_extrinsic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_detected_xyzyaw
    let len;
    let data = new node_detected_xyzyaw(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [self_drone_id]
    data.self_drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remote_drone_id]
    data.remote_drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dpos]
    data.dpos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [dpos_std]
    data.dpos_std = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [dyaw]
    data.dyaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dyaw_cov]
    data.dyaw_cov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enable_scale]
    data.enable_scale = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_yaw_valid]
    data.is_yaw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [probaility]
    data.probaility = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [inv_dep]
    data.inv_dep = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [local_pose_self]
    data.local_pose_self = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_pose_remote]
    data.local_pose_remote = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_extrinsic]
    data.camera_extrinsic = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 266;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/node_detected_xyzyaw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '153d8a388ec70ddfe9950d5a9c645eda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int64 id
    int32 self_drone_id
    int32 remote_drone_id
    geometry_msgs/Point dpos
    geometry_msgs/Point dpos_std
    
    float64 dyaw
    float64 dyaw_cov
    bool enable_scale
    bool is_yaw_valid
    float64 probaility
    float64 inv_dep
    
    geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.
    geometry_msgs/Pose local_pose_remote
    
    geometry_msgs/Pose camera_extrinsic
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_detected_xyzyaw(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.self_drone_id !== undefined) {
      resolved.self_drone_id = msg.self_drone_id;
    }
    else {
      resolved.self_drone_id = 0
    }

    if (msg.remote_drone_id !== undefined) {
      resolved.remote_drone_id = msg.remote_drone_id;
    }
    else {
      resolved.remote_drone_id = 0
    }

    if (msg.dpos !== undefined) {
      resolved.dpos = geometry_msgs.msg.Point.Resolve(msg.dpos)
    }
    else {
      resolved.dpos = new geometry_msgs.msg.Point()
    }

    if (msg.dpos_std !== undefined) {
      resolved.dpos_std = geometry_msgs.msg.Point.Resolve(msg.dpos_std)
    }
    else {
      resolved.dpos_std = new geometry_msgs.msg.Point()
    }

    if (msg.dyaw !== undefined) {
      resolved.dyaw = msg.dyaw;
    }
    else {
      resolved.dyaw = 0.0
    }

    if (msg.dyaw_cov !== undefined) {
      resolved.dyaw_cov = msg.dyaw_cov;
    }
    else {
      resolved.dyaw_cov = 0.0
    }

    if (msg.enable_scale !== undefined) {
      resolved.enable_scale = msg.enable_scale;
    }
    else {
      resolved.enable_scale = false
    }

    if (msg.is_yaw_valid !== undefined) {
      resolved.is_yaw_valid = msg.is_yaw_valid;
    }
    else {
      resolved.is_yaw_valid = false
    }

    if (msg.probaility !== undefined) {
      resolved.probaility = msg.probaility;
    }
    else {
      resolved.probaility = 0.0
    }

    if (msg.inv_dep !== undefined) {
      resolved.inv_dep = msg.inv_dep;
    }
    else {
      resolved.inv_dep = 0.0
    }

    if (msg.local_pose_self !== undefined) {
      resolved.local_pose_self = geometry_msgs.msg.Pose.Resolve(msg.local_pose_self)
    }
    else {
      resolved.local_pose_self = new geometry_msgs.msg.Pose()
    }

    if (msg.local_pose_remote !== undefined) {
      resolved.local_pose_remote = geometry_msgs.msg.Pose.Resolve(msg.local_pose_remote)
    }
    else {
      resolved.local_pose_remote = new geometry_msgs.msg.Pose()
    }

    if (msg.camera_extrinsic !== undefined) {
      resolved.camera_extrinsic = geometry_msgs.msg.Pose.Resolve(msg.camera_extrinsic)
    }
    else {
      resolved.camera_extrinsic = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = node_detected_xyzyaw;
