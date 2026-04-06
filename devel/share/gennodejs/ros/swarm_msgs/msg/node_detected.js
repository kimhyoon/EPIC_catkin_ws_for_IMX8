// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class node_detected {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.self_drone_id = null;
      this.remote_drone_id = null;
      this.relative_pose = null;
      this.is_2d_detect = null;
      this.is_yaw_valid = null;
      this.probaility = null;
      this.local_pose_self = null;
      this.local_pose_remote = null;
      this.dof_4 = null;
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
      if (initObj.hasOwnProperty('relative_pose')) {
        this.relative_pose = initObj.relative_pose
      }
      else {
        this.relative_pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('is_2d_detect')) {
        this.is_2d_detect = initObj.is_2d_detect
      }
      else {
        this.is_2d_detect = false;
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
      if (initObj.hasOwnProperty('dof_4')) {
        this.dof_4 = initObj.dof_4
      }
      else {
        this.dof_4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_detected
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [self_drone_id]
    bufferOffset = _serializer.int32(obj.self_drone_id, buffer, bufferOffset);
    // Serialize message field [remote_drone_id]
    bufferOffset = _serializer.int32(obj.remote_drone_id, buffer, bufferOffset);
    // Serialize message field [relative_pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.relative_pose, buffer, bufferOffset);
    // Serialize message field [is_2d_detect]
    bufferOffset = _serializer.bool(obj.is_2d_detect, buffer, bufferOffset);
    // Serialize message field [is_yaw_valid]
    bufferOffset = _serializer.bool(obj.is_yaw_valid, buffer, bufferOffset);
    // Serialize message field [probaility]
    bufferOffset = _serializer.float64(obj.probaility, buffer, bufferOffset);
    // Serialize message field [local_pose_self]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.local_pose_self, buffer, bufferOffset);
    // Serialize message field [local_pose_remote]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.local_pose_remote, buffer, bufferOffset);
    // Serialize message field [dof_4]
    bufferOffset = _serializer.bool(obj.dof_4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_detected
    let len;
    let data = new node_detected(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [self_drone_id]
    data.self_drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remote_drone_id]
    data.remote_drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [relative_pose]
    data.relative_pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_2d_detect]
    data.is_2d_detect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_yaw_valid]
    data.is_yaw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [probaility]
    data.probaility = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [local_pose_self]
    data.local_pose_self = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_pose_remote]
    data.local_pose_remote = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [dof_4]
    data.dof_4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 483;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/node_detected';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd83c2e1345fc81767f3cd9584b06399b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int64 id
    int32 self_drone_id
    int32 remote_drone_id
    geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1
    bool is_2d_detect
    bool is_yaw_valid
    float64 probaility
    geometry_msgs/Pose local_pose_self
    geometry_msgs/Pose local_pose_remote
    bool dof_4
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new node_detected(null);
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

    if (msg.relative_pose !== undefined) {
      resolved.relative_pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.relative_pose)
    }
    else {
      resolved.relative_pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.is_2d_detect !== undefined) {
      resolved.is_2d_detect = msg.is_2d_detect;
    }
    else {
      resolved.is_2d_detect = false
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

    if (msg.dof_4 !== undefined) {
      resolved.dof_4 = msg.dof_4;
    }
    else {
      resolved.dof_4 = false
    }

    return resolved;
    }
};

module.exports = node_detected;
