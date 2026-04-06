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

class swarm_fused_relative {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ids = null;
      this.relative_drone_position = null;
      this.relative_drone_velocity = null;
      this.relative_drone_yaw = null;
      this.position_cov = null;
      this.yaw_cov = null;
      this.self_yaw = null;
      this.self_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('relative_drone_position')) {
        this.relative_drone_position = initObj.relative_drone_position
      }
      else {
        this.relative_drone_position = [];
      }
      if (initObj.hasOwnProperty('relative_drone_velocity')) {
        this.relative_drone_velocity = initObj.relative_drone_velocity
      }
      else {
        this.relative_drone_velocity = [];
      }
      if (initObj.hasOwnProperty('relative_drone_yaw')) {
        this.relative_drone_yaw = initObj.relative_drone_yaw
      }
      else {
        this.relative_drone_yaw = [];
      }
      if (initObj.hasOwnProperty('position_cov')) {
        this.position_cov = initObj.position_cov
      }
      else {
        this.position_cov = [];
      }
      if (initObj.hasOwnProperty('yaw_cov')) {
        this.yaw_cov = initObj.yaw_cov
      }
      else {
        this.yaw_cov = [];
      }
      if (initObj.hasOwnProperty('self_yaw')) {
        this.self_yaw = initObj.self_yaw
      }
      else {
        this.self_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('self_pos')) {
        this.self_pos = initObj.self_pos
      }
      else {
        this.self_pos = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarm_fused_relative
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.uint32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [relative_drone_position]
    // Serialize the length for message field [relative_drone_position]
    bufferOffset = _serializer.uint32(obj.relative_drone_position.length, buffer, bufferOffset);
    obj.relative_drone_position.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [relative_drone_velocity]
    // Serialize the length for message field [relative_drone_velocity]
    bufferOffset = _serializer.uint32(obj.relative_drone_velocity.length, buffer, bufferOffset);
    obj.relative_drone_velocity.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [relative_drone_yaw]
    bufferOffset = _arraySerializer.float64(obj.relative_drone_yaw, buffer, bufferOffset, null);
    // Serialize message field [position_cov]
    // Serialize the length for message field [position_cov]
    bufferOffset = _serializer.uint32(obj.position_cov.length, buffer, bufferOffset);
    obj.position_cov.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [yaw_cov]
    bufferOffset = _arraySerializer.float64(obj.yaw_cov, buffer, bufferOffset, null);
    // Serialize message field [self_yaw]
    bufferOffset = _serializer.float64(obj.self_yaw, buffer, bufferOffset);
    // Serialize message field [self_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.self_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarm_fused_relative
    let len;
    let data = new swarm_fused_relative(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [relative_drone_position]
    // Deserialize array length for message field [relative_drone_position]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.relative_drone_position = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.relative_drone_position[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [relative_drone_velocity]
    // Deserialize array length for message field [relative_drone_velocity]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.relative_drone_velocity = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.relative_drone_velocity[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [relative_drone_yaw]
    data.relative_drone_yaw = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position_cov]
    // Deserialize array length for message field [position_cov]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.position_cov = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.position_cov[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [yaw_cov]
    data.yaw_cov = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [self_yaw]
    data.self_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [self_pos]
    data.self_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.ids.length;
    length += 24 * object.relative_drone_position.length;
    length += 24 * object.relative_drone_velocity.length;
    length += 8 * object.relative_drone_yaw.length;
    length += 24 * object.position_cov.length;
    length += 8 * object.yaw_cov.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/swarm_fused_relative';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1aec1b64c429b35f596e99eb4969d2f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32[] ids
    geometry_msgs/Point[] relative_drone_position
    geometry_msgs/Vector3[] relative_drone_velocity
    float64[] relative_drone_yaw
    
    geometry_msgs/Vector3[] position_cov
    float64[] yaw_cov
    
    float64 self_yaw
    geometry_msgs/Point self_pos
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new swarm_fused_relative(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.relative_drone_position !== undefined) {
      resolved.relative_drone_position = new Array(msg.relative_drone_position.length);
      for (let i = 0; i < resolved.relative_drone_position.length; ++i) {
        resolved.relative_drone_position[i] = geometry_msgs.msg.Point.Resolve(msg.relative_drone_position[i]);
      }
    }
    else {
      resolved.relative_drone_position = []
    }

    if (msg.relative_drone_velocity !== undefined) {
      resolved.relative_drone_velocity = new Array(msg.relative_drone_velocity.length);
      for (let i = 0; i < resolved.relative_drone_velocity.length; ++i) {
        resolved.relative_drone_velocity[i] = geometry_msgs.msg.Vector3.Resolve(msg.relative_drone_velocity[i]);
      }
    }
    else {
      resolved.relative_drone_velocity = []
    }

    if (msg.relative_drone_yaw !== undefined) {
      resolved.relative_drone_yaw = msg.relative_drone_yaw;
    }
    else {
      resolved.relative_drone_yaw = []
    }

    if (msg.position_cov !== undefined) {
      resolved.position_cov = new Array(msg.position_cov.length);
      for (let i = 0; i < resolved.position_cov.length; ++i) {
        resolved.position_cov[i] = geometry_msgs.msg.Vector3.Resolve(msg.position_cov[i]);
      }
    }
    else {
      resolved.position_cov = []
    }

    if (msg.yaw_cov !== undefined) {
      resolved.yaw_cov = msg.yaw_cov;
    }
    else {
      resolved.yaw_cov = []
    }

    if (msg.self_yaw !== undefined) {
      resolved.self_yaw = msg.self_yaw;
    }
    else {
      resolved.self_yaw = 0.0
    }

    if (msg.self_pos !== undefined) {
      resolved.self_pos = geometry_msgs.msg.Point.Resolve(msg.self_pos)
    }
    else {
      resolved.self_pos = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = swarm_fused_relative;
