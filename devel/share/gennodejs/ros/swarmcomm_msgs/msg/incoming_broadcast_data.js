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

class incoming_broadcast_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.remote_id = null;
      this.remote_recv_time = null;
      this.lps_time = null;
      this.data = null;
      this.source = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('remote_id')) {
        this.remote_id = initObj.remote_id
      }
      else {
        this.remote_id = 0;
      }
      if (initObj.hasOwnProperty('remote_recv_time')) {
        this.remote_recv_time = initObj.remote_recv_time
      }
      else {
        this.remote_recv_time = 0;
      }
      if (initObj.hasOwnProperty('lps_time')) {
        this.lps_time = initObj.lps_time
      }
      else {
        this.lps_time = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type incoming_broadcast_data
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [remote_id]
    bufferOffset = _serializer.uint32(obj.remote_id, buffer, bufferOffset);
    // Serialize message field [remote_recv_time]
    bufferOffset = _serializer.uint32(obj.remote_recv_time, buffer, bufferOffset);
    // Serialize message field [lps_time]
    bufferOffset = _serializer.uint32(obj.lps_time, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    // Serialize message field [source]
    bufferOffset = _serializer.int8(obj.source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type incoming_broadcast_data
    let len;
    let data = new incoming_broadcast_data(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [remote_id]
    data.remote_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [remote_recv_time]
    data.remote_recv_time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lps_time]
    data.lps_time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [source]
    data.source = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.data.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmcomm_msgs/incoming_broadcast_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fbd088099406fde7cc514736d266b32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 remote_id
    uint32 remote_recv_time
    uint32 lps_time
    uint8[] data
    
    int8 source #0 UWB 1 WIFI
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
    const resolved = new incoming_broadcast_data(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.remote_id !== undefined) {
      resolved.remote_id = msg.remote_id;
    }
    else {
      resolved.remote_id = 0
    }

    if (msg.remote_recv_time !== undefined) {
      resolved.remote_recv_time = msg.remote_recv_time;
    }
    else {
      resolved.remote_recv_time = 0
    }

    if (msg.lps_time !== undefined) {
      resolved.lps_time = msg.lps_time;
    }
    else {
      resolved.lps_time = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    return resolved;
    }
};

module.exports = incoming_broadcast_data;
