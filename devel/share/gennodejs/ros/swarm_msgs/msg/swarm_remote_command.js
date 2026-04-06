// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let swarmtal_msgs = _finder('swarmtal_msgs');

//-----------------------------------------------------------

class swarm_remote_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_id = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('target_id')) {
        this.target_id = initObj.target_id
      }
      else {
        this.target_id = 0;
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = new swarmtal_msgs.msg.drone_onboard_command();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarm_remote_command
    // Serialize message field [target_id]
    bufferOffset = _serializer.int32(obj.target_id, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = swarmtal_msgs.msg.drone_onboard_command.serialize(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarm_remote_command
    let len;
    let data = new swarm_remote_command(null);
    // Deserialize message field [target_id]
    data.target_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = swarmtal_msgs.msg.drone_onboard_command.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/swarm_remote_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '168acc9c69f67b2e7b4a0220dae289b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #When target id==-1, that is send to all
    int32 target_id
    swarmtal_msgs/drone_onboard_command cmd
    ================================================================================
    MSG: swarmtal_msgs/drone_onboard_command
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
    const resolved = new swarm_remote_command(null);
    if (msg.target_id !== undefined) {
      resolved.target_id = msg.target_id;
    }
    else {
      resolved.target_id = 0
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = swarmtal_msgs.msg.drone_onboard_command.Resolve(msg.cmd)
    }
    else {
      resolved.cmd = new swarmtal_msgs.msg.drone_onboard_command()
    }

    return resolved;
    }
};

module.exports = swarm_remote_command;
