// Auto-generated. Do not edit!

// (in-package swarmtal_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class drone_onboard_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command_type = null;
      this.param1 = null;
      this.param2 = null;
      this.param3 = null;
      this.param4 = null;
      this.param5 = null;
      this.param6 = null;
      this.param7 = null;
      this.param8 = null;
      this.param9 = null;
      this.param10 = null;
    }
    else {
      if (initObj.hasOwnProperty('command_type')) {
        this.command_type = initObj.command_type
      }
      else {
        this.command_type = 0;
      }
      if (initObj.hasOwnProperty('param1')) {
        this.param1 = initObj.param1
      }
      else {
        this.param1 = 0;
      }
      if (initObj.hasOwnProperty('param2')) {
        this.param2 = initObj.param2
      }
      else {
        this.param2 = 0;
      }
      if (initObj.hasOwnProperty('param3')) {
        this.param3 = initObj.param3
      }
      else {
        this.param3 = 0;
      }
      if (initObj.hasOwnProperty('param4')) {
        this.param4 = initObj.param4
      }
      else {
        this.param4 = 0;
      }
      if (initObj.hasOwnProperty('param5')) {
        this.param5 = initObj.param5
      }
      else {
        this.param5 = 0;
      }
      if (initObj.hasOwnProperty('param6')) {
        this.param6 = initObj.param6
      }
      else {
        this.param6 = 0;
      }
      if (initObj.hasOwnProperty('param7')) {
        this.param7 = initObj.param7
      }
      else {
        this.param7 = 0;
      }
      if (initObj.hasOwnProperty('param8')) {
        this.param8 = initObj.param8
      }
      else {
        this.param8 = 0;
      }
      if (initObj.hasOwnProperty('param9')) {
        this.param9 = initObj.param9
      }
      else {
        this.param9 = 0;
      }
      if (initObj.hasOwnProperty('param10')) {
        this.param10 = initObj.param10
      }
      else {
        this.param10 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drone_onboard_command
    // Serialize message field [command_type]
    bufferOffset = _serializer.uint32(obj.command_type, buffer, bufferOffset);
    // Serialize message field [param1]
    bufferOffset = _serializer.int32(obj.param1, buffer, bufferOffset);
    // Serialize message field [param2]
    bufferOffset = _serializer.int32(obj.param2, buffer, bufferOffset);
    // Serialize message field [param3]
    bufferOffset = _serializer.int32(obj.param3, buffer, bufferOffset);
    // Serialize message field [param4]
    bufferOffset = _serializer.int32(obj.param4, buffer, bufferOffset);
    // Serialize message field [param5]
    bufferOffset = _serializer.int32(obj.param5, buffer, bufferOffset);
    // Serialize message field [param6]
    bufferOffset = _serializer.int32(obj.param6, buffer, bufferOffset);
    // Serialize message field [param7]
    bufferOffset = _serializer.int32(obj.param7, buffer, bufferOffset);
    // Serialize message field [param8]
    bufferOffset = _serializer.int32(obj.param8, buffer, bufferOffset);
    // Serialize message field [param9]
    bufferOffset = _serializer.int32(obj.param9, buffer, bufferOffset);
    // Serialize message field [param10]
    bufferOffset = _serializer.int32(obj.param10, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone_onboard_command
    let len;
    let data = new drone_onboard_command(null);
    // Deserialize message field [command_type]
    data.command_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [param1]
    data.param1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param2]
    data.param2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param3]
    data.param3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param4]
    data.param4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param5]
    data.param5 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param6]
    data.param6 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param7]
    data.param7 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param8]
    data.param8 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param9]
    data.param9 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param10]
    data.param10 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmtal_msgs/drone_onboard_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5ca6aa226dc341da2ea852d685b0336';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 CTRL_POS_COMMAND=0
    uint32 CTRL_VEL_COMMAND=1
    uint32 CTRL_ATT_COMMAND=2
    uint32 CTRL_MISSION_LOAD_COMMAND=3
    uint32 CTRL_MISSION_END_COMMAND=4
    uint32 CTRL_TAKEOF_COMMAND=5
    uint32 CTRL_LANDING_COMMAND=6
    uint32 CTRL_HOVER_COMMAND=7
    uint32 CTRL_ARM_COMMAND=8
    
    uint32 CTRL_PLANING_TGT_COMMAND=10
    
    uint32 CTRL_FORMATION_IDLE=11
    
    #Passive hold in master's local frame
    uint32 CTRL_FORMATION_HOLD_0=12
    
    #Passive hold in master's natural frame
    uint32 CTRL_FORMATION_HOLD_1=13
    
    #Activate fly in master's local frame
    uint32 CTRL_FORMATION_FLY_0=14
    
    #Activate fly master's natural frame
    uint32 CTRL_FORMATION_FLY_1=15
    
    uint32 CTRL_SPEC_TRAJS=16
    uint32 CTRL_MISSION_TRAJS=20
    
    uint32 CTRL_TASK_EXPROLARATION=30
    
    uint32 CTRL_END_MISSION=99
    
    
    uint32 command_type
    #For formation param1 is id
    #Param 2 is submodule
    #3, 4, 5 is x y z
    #Param 6 is yaw
    
    # For POS param1 2 3 is x y z * 10000 
    # 4 is yaw*10000 if yaw =666666, then use last yawsp
    # 567 is vel feedforward 8 9 10
    
    # For VEL param1 2 3 is x y z * 10000 
    # 4 is yaw*10000 if yaw =666666, then use last yawsp
    
    # For ATT 
    # param1 2 3 4 is roll pitch yaw vz * 10000 
    # 5 (>0 use thrust else z is velz)
    # 6 (>0 use yaw else yawrate) 
    # For TAKEoff param 1 is takeoff height * 10000
    # For arm param = 0 is disarm param>0 is arm
    # For mission param1-7 is  mission id
    
    #For Spec traj, 
    # param1 is spec traj type 0 is disable. 1 is 8. 
    # param2 if enable yaw
    # param3 T*10000
    # param4 ox * 10000
    # param5 oy * 10000
    # param6 oz * 10000
    
    int32 param1
    int32 param2
    int32 param3
    int32 param4
    int32 param5
    int32 param6
    int32 param7
    int32 param8
    int32 param9
    int32 param10
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new drone_onboard_command(null);
    if (msg.command_type !== undefined) {
      resolved.command_type = msg.command_type;
    }
    else {
      resolved.command_type = 0
    }

    if (msg.param1 !== undefined) {
      resolved.param1 = msg.param1;
    }
    else {
      resolved.param1 = 0
    }

    if (msg.param2 !== undefined) {
      resolved.param2 = msg.param2;
    }
    else {
      resolved.param2 = 0
    }

    if (msg.param3 !== undefined) {
      resolved.param3 = msg.param3;
    }
    else {
      resolved.param3 = 0
    }

    if (msg.param4 !== undefined) {
      resolved.param4 = msg.param4;
    }
    else {
      resolved.param4 = 0
    }

    if (msg.param5 !== undefined) {
      resolved.param5 = msg.param5;
    }
    else {
      resolved.param5 = 0
    }

    if (msg.param6 !== undefined) {
      resolved.param6 = msg.param6;
    }
    else {
      resolved.param6 = 0
    }

    if (msg.param7 !== undefined) {
      resolved.param7 = msg.param7;
    }
    else {
      resolved.param7 = 0
    }

    if (msg.param8 !== undefined) {
      resolved.param8 = msg.param8;
    }
    else {
      resolved.param8 = 0
    }

    if (msg.param9 !== undefined) {
      resolved.param9 = msg.param9;
    }
    else {
      resolved.param9 = 0
    }

    if (msg.param10 !== undefined) {
      resolved.param10 = msg.param10;
    }
    else {
      resolved.param10 = 0
    }

    return resolved;
    }
};

// Constants for message
drone_onboard_command.Constants = {
  CTRL_POS_COMMAND: 0,
  CTRL_VEL_COMMAND: 1,
  CTRL_ATT_COMMAND: 2,
  CTRL_MISSION_LOAD_COMMAND: 3,
  CTRL_MISSION_END_COMMAND: 4,
  CTRL_TAKEOF_COMMAND: 5,
  CTRL_LANDING_COMMAND: 6,
  CTRL_HOVER_COMMAND: 7,
  CTRL_ARM_COMMAND: 8,
  CTRL_PLANING_TGT_COMMAND: 10,
  CTRL_FORMATION_IDLE: 11,
  CTRL_FORMATION_HOLD_0: 12,
  CTRL_FORMATION_HOLD_1: 13,
  CTRL_FORMATION_FLY_0: 14,
  CTRL_FORMATION_FLY_1: 15,
  CTRL_SPEC_TRAJS: 16,
  CTRL_MISSION_TRAJS: 20,
  CTRL_TASK_EXPROLARATION: 30,
  CTRL_END_MISSION: 99,
}

module.exports = drone_onboard_command;
