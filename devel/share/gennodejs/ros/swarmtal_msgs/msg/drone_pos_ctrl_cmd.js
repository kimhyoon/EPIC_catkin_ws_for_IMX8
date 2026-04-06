// Auto-generated. Do not edit!

// (in-package swarmtal_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class drone_pos_ctrl_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrl_mode = null;
      this.pos_sp = null;
      this.vel_sp = null;
      this.acc_sp = null;
      this.att_sp = null;
      this.yaw_sp = null;
      this.z_sp = null;
      this.use_fc_yaw = null;
      this.max_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrl_mode')) {
        this.ctrl_mode = initObj.ctrl_mode
      }
      else {
        this.ctrl_mode = 0;
      }
      if (initObj.hasOwnProperty('pos_sp')) {
        this.pos_sp = initObj.pos_sp
      }
      else {
        this.pos_sp = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('vel_sp')) {
        this.vel_sp = initObj.vel_sp
      }
      else {
        this.vel_sp = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acc_sp')) {
        this.acc_sp = initObj.acc_sp
      }
      else {
        this.acc_sp = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('att_sp')) {
        this.att_sp = initObj.att_sp
      }
      else {
        this.att_sp = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('yaw_sp')) {
        this.yaw_sp = initObj.yaw_sp
      }
      else {
        this.yaw_sp = 0.0;
      }
      if (initObj.hasOwnProperty('z_sp')) {
        this.z_sp = initObj.z_sp
      }
      else {
        this.z_sp = 0.0;
      }
      if (initObj.hasOwnProperty('use_fc_yaw')) {
        this.use_fc_yaw = initObj.use_fc_yaw
      }
      else {
        this.use_fc_yaw = false;
      }
      if (initObj.hasOwnProperty('max_vel')) {
        this.max_vel = initObj.max_vel
      }
      else {
        this.max_vel = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drone_pos_ctrl_cmd
    // Serialize message field [ctrl_mode]
    bufferOffset = _serializer.uint32(obj.ctrl_mode, buffer, bufferOffset);
    // Serialize message field [pos_sp]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pos_sp, buffer, bufferOffset);
    // Serialize message field [vel_sp]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vel_sp, buffer, bufferOffset);
    // Serialize message field [acc_sp]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acc_sp, buffer, bufferOffset);
    // Serialize message field [att_sp]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.att_sp, buffer, bufferOffset);
    // Serialize message field [yaw_sp]
    bufferOffset = _serializer.float64(obj.yaw_sp, buffer, bufferOffset);
    // Serialize message field [z_sp]
    bufferOffset = _serializer.float64(obj.z_sp, buffer, bufferOffset);
    // Serialize message field [use_fc_yaw]
    bufferOffset = _serializer.bool(obj.use_fc_yaw, buffer, bufferOffset);
    // Serialize message field [max_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.max_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone_pos_ctrl_cmd
    let len;
    let data = new drone_pos_ctrl_cmd(null);
    // Deserialize message field [ctrl_mode]
    data.ctrl_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pos_sp]
    data.pos_sp = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_sp]
    data.vel_sp = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_sp]
    data.acc_sp = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [att_sp]
    data.att_sp = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw_sp]
    data.yaw_sp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_sp]
    data.z_sp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [use_fc_yaw]
    data.use_fc_yaw = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_vel]
    data.max_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 149;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmtal_msgs/drone_pos_ctrl_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af8791618f25096214834155fb70f593';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 CTRL_CMD_IDLE_MODE = 0
    uint32 CTRL_CMD_VEL_MODE  = 1
    uint32 CTRL_CMD_POS_MODE  = 2
    uint32 CTRL_CMD_ATT_THRUST_MODE  = 3
    uint32 CTRL_CMD_ATT_VELZ_MODE  = 4
    
    uint32 ctrl_mode
    
    geometry_msgs/Vector3 pos_sp
    geometry_msgs/Vector3 vel_sp
    geometry_msgs/Vector3 acc_sp
    geometry_msgs/Quaternion att_sp
    float64 yaw_sp
    float64 z_sp
    
    bool use_fc_yaw
    
    geometry_msgs/Vector3 max_vel
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
    const resolved = new drone_pos_ctrl_cmd(null);
    if (msg.ctrl_mode !== undefined) {
      resolved.ctrl_mode = msg.ctrl_mode;
    }
    else {
      resolved.ctrl_mode = 0
    }

    if (msg.pos_sp !== undefined) {
      resolved.pos_sp = geometry_msgs.msg.Vector3.Resolve(msg.pos_sp)
    }
    else {
      resolved.pos_sp = new geometry_msgs.msg.Vector3()
    }

    if (msg.vel_sp !== undefined) {
      resolved.vel_sp = geometry_msgs.msg.Vector3.Resolve(msg.vel_sp)
    }
    else {
      resolved.vel_sp = new geometry_msgs.msg.Vector3()
    }

    if (msg.acc_sp !== undefined) {
      resolved.acc_sp = geometry_msgs.msg.Vector3.Resolve(msg.acc_sp)
    }
    else {
      resolved.acc_sp = new geometry_msgs.msg.Vector3()
    }

    if (msg.att_sp !== undefined) {
      resolved.att_sp = geometry_msgs.msg.Quaternion.Resolve(msg.att_sp)
    }
    else {
      resolved.att_sp = new geometry_msgs.msg.Quaternion()
    }

    if (msg.yaw_sp !== undefined) {
      resolved.yaw_sp = msg.yaw_sp;
    }
    else {
      resolved.yaw_sp = 0.0
    }

    if (msg.z_sp !== undefined) {
      resolved.z_sp = msg.z_sp;
    }
    else {
      resolved.z_sp = 0.0
    }

    if (msg.use_fc_yaw !== undefined) {
      resolved.use_fc_yaw = msg.use_fc_yaw;
    }
    else {
      resolved.use_fc_yaw = false
    }

    if (msg.max_vel !== undefined) {
      resolved.max_vel = geometry_msgs.msg.Vector3.Resolve(msg.max_vel)
    }
    else {
      resolved.max_vel = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

// Constants for message
drone_pos_ctrl_cmd.Constants = {
  CTRL_CMD_IDLE_MODE: 0,
  CTRL_CMD_VEL_MODE: 1,
  CTRL_CMD_POS_MODE: 2,
  CTRL_CMD_ATT_THRUST_MODE: 3,
  CTRL_CMD_ATT_VELZ_MODE: 4,
}

module.exports = drone_pos_ctrl_cmd;
