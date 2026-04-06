// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let node_detected = require('./node_detected.js');
let node_detected_xyzyaw = require('./node_detected_xyzyaw.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class swarm_detected {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.self_drone_id = null;
      this.detected_nodes = null;
      this.detected_nodes_xyz_yaw = null;
      this.is_6d_detect = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('self_drone_id')) {
        this.self_drone_id = initObj.self_drone_id
      }
      else {
        this.self_drone_id = 0;
      }
      if (initObj.hasOwnProperty('detected_nodes')) {
        this.detected_nodes = initObj.detected_nodes
      }
      else {
        this.detected_nodes = [];
      }
      if (initObj.hasOwnProperty('detected_nodes_xyz_yaw')) {
        this.detected_nodes_xyz_yaw = initObj.detected_nodes_xyz_yaw
      }
      else {
        this.detected_nodes_xyz_yaw = [];
      }
      if (initObj.hasOwnProperty('is_6d_detect')) {
        this.is_6d_detect = initObj.is_6d_detect
      }
      else {
        this.is_6d_detect = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarm_detected
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [self_drone_id]
    bufferOffset = _serializer.int32(obj.self_drone_id, buffer, bufferOffset);
    // Serialize message field [detected_nodes]
    // Serialize the length for message field [detected_nodes]
    bufferOffset = _serializer.uint32(obj.detected_nodes.length, buffer, bufferOffset);
    obj.detected_nodes.forEach((val) => {
      bufferOffset = node_detected.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [detected_nodes_xyz_yaw]
    // Serialize the length for message field [detected_nodes_xyz_yaw]
    bufferOffset = _serializer.uint32(obj.detected_nodes_xyz_yaw.length, buffer, bufferOffset);
    obj.detected_nodes_xyz_yaw.forEach((val) => {
      bufferOffset = node_detected_xyzyaw.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_6d_detect]
    bufferOffset = _serializer.bool(obj.is_6d_detect, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarm_detected
    let len;
    let data = new swarm_detected(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [self_drone_id]
    data.self_drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [detected_nodes]
    // Deserialize array length for message field [detected_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_nodes[i] = node_detected.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [detected_nodes_xyz_yaw]
    // Deserialize array length for message field [detected_nodes_xyz_yaw]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_nodes_xyz_yaw = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_nodes_xyz_yaw[i] = node_detected_xyzyaw.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_6d_detect]
    data.is_6d_detect = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.detected_nodes.forEach((val) => {
      length += node_detected.getMessageSize(val);
    });
    object.detected_nodes_xyz_yaw.forEach((val) => {
      length += node_detected_xyzyaw.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/swarm_detected';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37a9e13432a599762a05d5f1e0fb11f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 self_drone_id
    node_detected[] detected_nodes
    node_detected_xyzyaw[] detected_nodes_xyz_yaw
    
    bool is_6d_detect #if only xyzyaw; false then only xyzyaw
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
    MSG: swarm_msgs/node_detected
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
    
    ================================================================================
    MSG: swarm_msgs/node_detected_xyzyaw
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new swarm_detected(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.self_drone_id !== undefined) {
      resolved.self_drone_id = msg.self_drone_id;
    }
    else {
      resolved.self_drone_id = 0
    }

    if (msg.detected_nodes !== undefined) {
      resolved.detected_nodes = new Array(msg.detected_nodes.length);
      for (let i = 0; i < resolved.detected_nodes.length; ++i) {
        resolved.detected_nodes[i] = node_detected.Resolve(msg.detected_nodes[i]);
      }
    }
    else {
      resolved.detected_nodes = []
    }

    if (msg.detected_nodes_xyz_yaw !== undefined) {
      resolved.detected_nodes_xyz_yaw = new Array(msg.detected_nodes_xyz_yaw.length);
      for (let i = 0; i < resolved.detected_nodes_xyz_yaw.length; ++i) {
        resolved.detected_nodes_xyz_yaw[i] = node_detected_xyzyaw.Resolve(msg.detected_nodes_xyz_yaw[i]);
      }
    }
    else {
      resolved.detected_nodes_xyz_yaw = []
    }

    if (msg.is_6d_detect !== undefined) {
      resolved.is_6d_detect = msg.is_6d_detect;
    }
    else {
      resolved.is_6d_detect = false
    }

    return resolved;
    }
};

module.exports = swarm_detected;
