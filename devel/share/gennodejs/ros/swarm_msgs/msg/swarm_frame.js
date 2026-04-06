// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let node_frame = require('./node_frame.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class swarm_frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.node_frames = null;
      this.self_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('node_frames')) {
        this.node_frames = initObj.node_frames
      }
      else {
        this.node_frames = [];
      }
      if (initObj.hasOwnProperty('self_id')) {
        this.self_id = initObj.self_id
      }
      else {
        this.self_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarm_frame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [node_frames]
    // Serialize the length for message field [node_frames]
    bufferOffset = _serializer.uint32(obj.node_frames.length, buffer, bufferOffset);
    obj.node_frames.forEach((val) => {
      bufferOffset = node_frame.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [self_id]
    bufferOffset = _serializer.int32(obj.self_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarm_frame
    let len;
    let data = new swarm_frame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_frames]
    // Deserialize array length for message field [node_frames]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_frames = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_frames[i] = node_frame.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [self_id]
    data.self_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.node_frames.forEach((val) => {
      length += node_frame.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/swarm_frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04c8bdaacf2ca38f8b270c8aadec114d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    node_frame[] node_frames
    int32 self_id
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
    MSG: swarm_msgs/node_frame
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
    const resolved = new swarm_frame(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.node_frames !== undefined) {
      resolved.node_frames = new Array(msg.node_frames.length);
      for (let i = 0; i < resolved.node_frames.length; ++i) {
        resolved.node_frames[i] = node_frame.Resolve(msg.node_frames[i]);
      }
    }
    else {
      resolved.node_frames = []
    }

    if (msg.self_id !== undefined) {
      resolved.self_id = msg.self_id;
    }
    else {
      resolved.self_id = 0
    }

    return resolved;
    }
};

module.exports = swarm_frame;
