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

class swarm_drone_basecoor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ids = null;
      this.drone_basecoor = null;
      this.drone_baseyaw = null;
      this.position_cov = null;
      this.yaw_cov = null;
      this.self_id = null;
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
      if (initObj.hasOwnProperty('drone_basecoor')) {
        this.drone_basecoor = initObj.drone_basecoor
      }
      else {
        this.drone_basecoor = [];
      }
      if (initObj.hasOwnProperty('drone_baseyaw')) {
        this.drone_baseyaw = initObj.drone_baseyaw
      }
      else {
        this.drone_baseyaw = [];
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
      if (initObj.hasOwnProperty('self_id')) {
        this.self_id = initObj.self_id
      }
      else {
        this.self_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarm_drone_basecoor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.uint32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [drone_basecoor]
    // Serialize the length for message field [drone_basecoor]
    bufferOffset = _serializer.uint32(obj.drone_basecoor.length, buffer, bufferOffset);
    obj.drone_basecoor.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [drone_baseyaw]
    bufferOffset = _arraySerializer.float64(obj.drone_baseyaw, buffer, bufferOffset, null);
    // Serialize message field [position_cov]
    // Serialize the length for message field [position_cov]
    bufferOffset = _serializer.uint32(obj.position_cov.length, buffer, bufferOffset);
    obj.position_cov.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [yaw_cov]
    bufferOffset = _arraySerializer.float64(obj.yaw_cov, buffer, bufferOffset, null);
    // Serialize message field [self_id]
    bufferOffset = _serializer.uint32(obj.self_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarm_drone_basecoor
    let len;
    let data = new swarm_drone_basecoor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [drone_basecoor]
    // Deserialize array length for message field [drone_basecoor]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drone_basecoor = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drone_basecoor[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [drone_baseyaw]
    data.drone_baseyaw = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position_cov]
    // Deserialize array length for message field [position_cov]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.position_cov = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.position_cov[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [yaw_cov]
    data.yaw_cov = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [self_id]
    data.self_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.ids.length;
    length += 24 * object.drone_basecoor.length;
    length += 8 * object.drone_baseyaw.length;
    length += 24 * object.position_cov.length;
    length += 8 * object.yaw_cov.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/swarm_drone_basecoor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6b9ba938857aabbb8150d46c1be97be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32[] ids
    geometry_msgs/Point[] drone_basecoor
    #Only yaw transformed
    float64[] drone_baseyaw
    geometry_msgs/Vector3[] position_cov
    float64[] yaw_cov
    uint32 self_id
    
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
    const resolved = new swarm_drone_basecoor(null);
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

    if (msg.drone_basecoor !== undefined) {
      resolved.drone_basecoor = new Array(msg.drone_basecoor.length);
      for (let i = 0; i < resolved.drone_basecoor.length; ++i) {
        resolved.drone_basecoor[i] = geometry_msgs.msg.Point.Resolve(msg.drone_basecoor[i]);
      }
    }
    else {
      resolved.drone_basecoor = []
    }

    if (msg.drone_baseyaw !== undefined) {
      resolved.drone_baseyaw = msg.drone_baseyaw;
    }
    else {
      resolved.drone_baseyaw = []
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

    if (msg.self_id !== undefined) {
      resolved.self_id = msg.self_id;
    }
    else {
      resolved.self_id = 0
    }

    return resolved;
    }
};

module.exports = swarm_drone_basecoor;
