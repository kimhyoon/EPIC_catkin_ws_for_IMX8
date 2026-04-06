// Auto-generated. Do not edit!

// (in-package swarmcomm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let drone_network_status = require('./drone_network_status.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class swarm_network_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.node_ids = null;
      this.network_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('node_ids')) {
        this.node_ids = initObj.node_ids
      }
      else {
        this.node_ids = [];
      }
      if (initObj.hasOwnProperty('network_status')) {
        this.network_status = initObj.network_status
      }
      else {
        this.network_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarm_network_status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [node_ids]
    bufferOffset = _arraySerializer.uint32(obj.node_ids, buffer, bufferOffset, null);
    // Serialize message field [network_status]
    // Serialize the length for message field [network_status]
    bufferOffset = _serializer.uint32(obj.network_status.length, buffer, bufferOffset);
    obj.network_status.forEach((val) => {
      bufferOffset = drone_network_status.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarm_network_status
    let len;
    let data = new swarm_network_status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_ids]
    data.node_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [network_status]
    // Deserialize array length for message field [network_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.network_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.network_status[i] = drone_network_status.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.node_ids.length;
    object.network_status.forEach((val) => {
      length += drone_network_status.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmcomm_msgs/swarm_network_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c1c1859eb0bfda60ba46555f90ca67f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32[] node_ids
    drone_network_status[] network_status
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
    MSG: swarmcomm_msgs/drone_network_status
    Header header
    uint32 drone_id
    bool active
    int32 quality
    int32 bandwidth
    int32 hops
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new swarm_network_status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.node_ids !== undefined) {
      resolved.node_ids = msg.node_ids;
    }
    else {
      resolved.node_ids = []
    }

    if (msg.network_status !== undefined) {
      resolved.network_status = new Array(msg.network_status.length);
      for (let i = 0; i < resolved.network_status.length; ++i) {
        resolved.network_status[i] = drone_network_status.Resolve(msg.network_status[i]);
      }
    }
    else {
      resolved.network_status = []
    }

    return resolved;
    }
};

module.exports = swarm_network_status;
