// Auto-generated. Do not edit!

// (in-package swarmcomm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class drone_network_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_id = null;
      this.active = null;
      this.quality = null;
      this.bandwidth = null;
      this.hops = null;
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
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('bandwidth')) {
        this.bandwidth = initObj.bandwidth
      }
      else {
        this.bandwidth = 0;
      }
      if (initObj.hasOwnProperty('hops')) {
        this.hops = initObj.hops
      }
      else {
        this.hops = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drone_network_status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.uint32(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.int32(obj.quality, buffer, bufferOffset);
    // Serialize message field [bandwidth]
    bufferOffset = _serializer.int32(obj.bandwidth, buffer, bufferOffset);
    // Serialize message field [hops]
    bufferOffset = _serializer.int32(obj.hops, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone_network_status
    let len;
    let data = new drone_network_status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bandwidth]
    data.bandwidth = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hops]
    data.hops = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmcomm_msgs/drone_network_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63a82d3d4b8f3839b01ee568fe5fa8ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 drone_id
    bool active
    int32 quality
    int32 bandwidth
    int32 hops
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new drone_network_status(null);
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

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.bandwidth !== undefined) {
      resolved.bandwidth = msg.bandwidth;
    }
    else {
      resolved.bandwidth = 0
    }

    if (msg.hops !== undefined) {
      resolved.hops = msg.hops;
    }
    else {
      resolved.hops = 0
    }

    return resolved;
    }
};

module.exports = drone_network_status;
