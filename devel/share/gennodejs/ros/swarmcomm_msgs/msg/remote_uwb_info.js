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

class remote_uwb_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sys_time = null;
      this.remote_node_num = null;
      this.self_id = null;
      this.node_ids = null;
      this.node_dis = null;
      this.fp_rssi = null;
      this.rx_rssi = null;
      this.recv_distance_time = null;
      this.active = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sys_time')) {
        this.sys_time = initObj.sys_time
      }
      else {
        this.sys_time = 0;
      }
      if (initObj.hasOwnProperty('remote_node_num')) {
        this.remote_node_num = initObj.remote_node_num
      }
      else {
        this.remote_node_num = 0;
      }
      if (initObj.hasOwnProperty('self_id')) {
        this.self_id = initObj.self_id
      }
      else {
        this.self_id = 0;
      }
      if (initObj.hasOwnProperty('node_ids')) {
        this.node_ids = initObj.node_ids
      }
      else {
        this.node_ids = [];
      }
      if (initObj.hasOwnProperty('node_dis')) {
        this.node_dis = initObj.node_dis
      }
      else {
        this.node_dis = [];
      }
      if (initObj.hasOwnProperty('fp_rssi')) {
        this.fp_rssi = initObj.fp_rssi
      }
      else {
        this.fp_rssi = [];
      }
      if (initObj.hasOwnProperty('rx_rssi')) {
        this.rx_rssi = initObj.rx_rssi
      }
      else {
        this.rx_rssi = [];
      }
      if (initObj.hasOwnProperty('recv_distance_time')) {
        this.recv_distance_time = initObj.recv_distance_time
      }
      else {
        this.recv_distance_time = [];
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type remote_uwb_info
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sys_time]
    bufferOffset = _serializer.uint32(obj.sys_time, buffer, bufferOffset);
    // Serialize message field [remote_node_num]
    bufferOffset = _serializer.uint32(obj.remote_node_num, buffer, bufferOffset);
    // Serialize message field [self_id]
    bufferOffset = _serializer.uint32(obj.self_id, buffer, bufferOffset);
    // Serialize message field [node_ids]
    bufferOffset = _arraySerializer.uint32(obj.node_ids, buffer, bufferOffset, null);
    // Serialize message field [node_dis]
    bufferOffset = _arraySerializer.float32(obj.node_dis, buffer, bufferOffset, null);
    // Serialize message field [fp_rssi]
    bufferOffset = _arraySerializer.float32(obj.fp_rssi, buffer, bufferOffset, null);
    // Serialize message field [rx_rssi]
    bufferOffset = _arraySerializer.float32(obj.rx_rssi, buffer, bufferOffset, null);
    // Serialize message field [recv_distance_time]
    bufferOffset = _arraySerializer.uint32(obj.recv_distance_time, buffer, bufferOffset, null);
    // Serialize message field [active]
    bufferOffset = _arraySerializer.bool(obj.active, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type remote_uwb_info
    let len;
    let data = new remote_uwb_info(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sys_time]
    data.sys_time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [remote_node_num]
    data.remote_node_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [self_id]
    data.self_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [node_ids]
    data.node_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [node_dis]
    data.node_dis = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [fp_rssi]
    data.fp_rssi = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rx_rssi]
    data.rx_rssi = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [recv_distance_time]
    data.recv_distance_time = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [active]
    data.active = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.node_ids.length;
    length += 4 * object.node_dis.length;
    length += 4 * object.fp_rssi.length;
    length += 4 * object.rx_rssi.length;
    length += 4 * object.recv_distance_time.length;
    length += object.active.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmcomm_msgs/remote_uwb_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e25f2594fd25635dd69a8518fb143b76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 sys_time
    uint32 remote_node_num
    uint32 self_id
    uint32[] node_ids
    float32[] node_dis
    float32[] fp_rssi
    float32[] rx_rssi
    uint32[] recv_distance_time
    bool[] active
    
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
    const resolved = new remote_uwb_info(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sys_time !== undefined) {
      resolved.sys_time = msg.sys_time;
    }
    else {
      resolved.sys_time = 0
    }

    if (msg.remote_node_num !== undefined) {
      resolved.remote_node_num = msg.remote_node_num;
    }
    else {
      resolved.remote_node_num = 0
    }

    if (msg.self_id !== undefined) {
      resolved.self_id = msg.self_id;
    }
    else {
      resolved.self_id = 0
    }

    if (msg.node_ids !== undefined) {
      resolved.node_ids = msg.node_ids;
    }
    else {
      resolved.node_ids = []
    }

    if (msg.node_dis !== undefined) {
      resolved.node_dis = msg.node_dis;
    }
    else {
      resolved.node_dis = []
    }

    if (msg.fp_rssi !== undefined) {
      resolved.fp_rssi = msg.fp_rssi;
    }
    else {
      resolved.fp_rssi = []
    }

    if (msg.rx_rssi !== undefined) {
      resolved.rx_rssi = msg.rx_rssi;
    }
    else {
      resolved.rx_rssi = []
    }

    if (msg.recv_distance_time !== undefined) {
      resolved.recv_distance_time = msg.recv_distance_time;
    }
    else {
      resolved.recv_distance_time = []
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = []
    }

    return resolved;
    }
};

module.exports = remote_uwb_info;
