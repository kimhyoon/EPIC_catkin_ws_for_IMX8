// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let node_detected_xyzyaw = require('./node_detected_xyzyaw.js');
let node_detected = require('./node_detected.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class node_frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_id = null;
      this.keyframe_id = null;
      this.position = null;
      this.velocity = null;
      this.yaw = null;
      this.pitch = null;
      this.roll = null;
      this.quat = null;
      this.vo_available = null;
      this.dismap_ids = null;
      this.dismap_dists = null;
      this.detected_xyzyaws = null;
      this.detected = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('keyframe_id')) {
        this.keyframe_id = initObj.keyframe_id
      }
      else {
        this.keyframe_id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('quat')) {
        this.quat = initObj.quat
      }
      else {
        this.quat = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('vo_available')) {
        this.vo_available = initObj.vo_available
      }
      else {
        this.vo_available = false;
      }
      if (initObj.hasOwnProperty('dismap_ids')) {
        this.dismap_ids = initObj.dismap_ids
      }
      else {
        this.dismap_ids = [];
      }
      if (initObj.hasOwnProperty('dismap_dists')) {
        this.dismap_dists = initObj.dismap_dists
      }
      else {
        this.dismap_dists = [];
      }
      if (initObj.hasOwnProperty('detected_xyzyaws')) {
        this.detected_xyzyaws = initObj.detected_xyzyaws
      }
      else {
        this.detected_xyzyaws = [];
      }
      if (initObj.hasOwnProperty('detected')) {
        this.detected = initObj.detected
      }
      else {
        this.detected = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_frame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.int32(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [keyframe_id]
    bufferOffset = _serializer.uint64(obj.keyframe_id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [quat]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.quat, buffer, bufferOffset);
    // Serialize message field [vo_available]
    bufferOffset = _serializer.bool(obj.vo_available, buffer, bufferOffset);
    // Serialize message field [dismap_ids]
    bufferOffset = _arraySerializer.int32(obj.dismap_ids, buffer, bufferOffset, null);
    // Serialize message field [dismap_dists]
    bufferOffset = _arraySerializer.float64(obj.dismap_dists, buffer, bufferOffset, null);
    // Serialize message field [detected_xyzyaws]
    // Serialize the length for message field [detected_xyzyaws]
    bufferOffset = _serializer.uint32(obj.detected_xyzyaws.length, buffer, bufferOffset);
    obj.detected_xyzyaws.forEach((val) => {
      bufferOffset = node_detected_xyzyaw.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [detected]
    // Serialize the length for message field [detected]
    bufferOffset = _serializer.uint32(obj.detected.length, buffer, bufferOffset);
    obj.detected.forEach((val) => {
      bufferOffset = node_detected.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_frame
    let len;
    let data = new node_frame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [keyframe_id]
    data.keyframe_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [quat]
    data.quat = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [vo_available]
    data.vo_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dismap_ids]
    data.dismap_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [dismap_dists]
    data.dismap_dists = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [detected_xyzyaws]
    // Deserialize array length for message field [detected_xyzyaws]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_xyzyaws = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_xyzyaws[i] = node_detected_xyzyaw.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [detected]
    // Deserialize array length for message field [detected]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected[i] = node_detected.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.dismap_ids.length;
    length += 8 * object.dismap_dists.length;
    object.detected_xyzyaws.forEach((val) => {
      length += node_detected_xyzyaw.getMessageSize(val);
    });
    object.detected.forEach((val) => {
      length += node_detected.getMessageSize(val);
    });
    return length + 121;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/node_frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8804cccece15c26162c55054a22f87c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 drone_id #This is drone ID!!!
    uint64 keyframe_id
    
    geometry_msgs/Point position
    geometry_msgs/Point velocity
    float32 yaw
    float32 pitch
    float32 roll
    geometry_msgs/Quaternion quat
    
    bool vo_available
    int32[] dismap_ids
    float64[] dismap_dists
    node_detected_xyzyaw[] detected_xyzyaws
    node_detected[] detected
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
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_frame(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.keyframe_id !== undefined) {
      resolved.keyframe_id = msg.keyframe_id;
    }
    else {
      resolved.keyframe_id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Point.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Point()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.quat !== undefined) {
      resolved.quat = geometry_msgs.msg.Quaternion.Resolve(msg.quat)
    }
    else {
      resolved.quat = new geometry_msgs.msg.Quaternion()
    }

    if (msg.vo_available !== undefined) {
      resolved.vo_available = msg.vo_available;
    }
    else {
      resolved.vo_available = false
    }

    if (msg.dismap_ids !== undefined) {
      resolved.dismap_ids = msg.dismap_ids;
    }
    else {
      resolved.dismap_ids = []
    }

    if (msg.dismap_dists !== undefined) {
      resolved.dismap_dists = msg.dismap_dists;
    }
    else {
      resolved.dismap_dists = []
    }

    if (msg.detected_xyzyaws !== undefined) {
      resolved.detected_xyzyaws = new Array(msg.detected_xyzyaws.length);
      for (let i = 0; i < resolved.detected_xyzyaws.length; ++i) {
        resolved.detected_xyzyaws[i] = node_detected_xyzyaw.Resolve(msg.detected_xyzyaws[i]);
      }
    }
    else {
      resolved.detected_xyzyaws = []
    }

    if (msg.detected !== undefined) {
      resolved.detected = new Array(msg.detected.length);
      for (let i = 0; i < resolved.detected.length; ++i) {
        resolved.detected[i] = node_detected.Resolve(msg.detected[i]);
      }
    }
    else {
      resolved.detected = []
    }

    return resolved;
    }
};

module.exports = node_frame;
