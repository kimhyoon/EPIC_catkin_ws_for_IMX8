// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LoopEdge = require('./LoopEdge.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LoopEdges {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.loops = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('loops')) {
        this.loops = initObj.loops
      }
      else {
        this.loops = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopEdges
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [loops]
    // Serialize the length for message field [loops]
    bufferOffset = _serializer.uint32(obj.loops.length, buffer, bufferOffset);
    obj.loops.forEach((val) => {
      bufferOffset = LoopEdge.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopEdges
    let len;
    let data = new LoopEdges(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [loops]
    // Deserialize array length for message field [loops]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.loops = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.loops[i] = LoopEdge.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 277 * object.loops.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/LoopEdges';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90a7ebaed3f91cb5af316ff75b2d20ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    LoopEdge[] loops
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
    MSG: swarm_msgs/LoopEdge
    time ts_a
    time ts_b
    uint64 drone_id_a
    uint64 drone_id_b
    uint64 keyframe_id_a
    uint64 keyframe_id_b
    geometry_msgs/Pose relative_pose
    
    geometry_msgs/Pose self_pose_a
    geometry_msgs/Pose self_pose_b
    
    geometry_msgs/Point pos_cov
    geometry_msgs/Point ang_cov
    
    #Details for loop
    int32 pnp_inlier_num
    bool is_4dof
    uint64 id
    
    #geometry_msgs/Point[] point_cloud_b
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
    const resolved = new LoopEdges(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.loops !== undefined) {
      resolved.loops = new Array(msg.loops.length);
      for (let i = 0; i < resolved.loops.length; ++i) {
        resolved.loops[i] = LoopEdge.Resolve(msg.loops[i]);
      }
    }
    else {
      resolved.loops = []
    }

    return resolved;
    }
};

module.exports = LoopEdges;
