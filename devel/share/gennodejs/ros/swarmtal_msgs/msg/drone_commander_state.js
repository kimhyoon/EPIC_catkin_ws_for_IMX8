// Auto-generated. Do not edit!

// (in-package swarmtal_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let drone_pos_ctrl_cmd = require('./drone_pos_ctrl_cmd.js');
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class drone_commander_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrl_input_state = null;
      this.flight_status = null;
      this.control_auth = null;
      this.takeoff_target_height = null;
      this.takeoff_velocity = null;
      this.vo_latency = null;
      this.landing_mode = null;
      this.landing_velocity = null;
      this.commander_ctrl_mode = null;
      this.bat_vol = null;
      this.bat_remain = null;
      this.is_armed = null;
      this.rc_valid = null;
      this.onboard_cmd_valid = null;
      this.vo_valid = null;
      this.djisdk_valid = null;
      this.pos = null;
      this.vel = null;
      this.yaw = null;
      this.ctrl_cmd = null;
      this.imu_data = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrl_input_state')) {
        this.ctrl_input_state = initObj.ctrl_input_state
      }
      else {
        this.ctrl_input_state = 0;
      }
      if (initObj.hasOwnProperty('flight_status')) {
        this.flight_status = initObj.flight_status
      }
      else {
        this.flight_status = 0;
      }
      if (initObj.hasOwnProperty('control_auth')) {
        this.control_auth = initObj.control_auth
      }
      else {
        this.control_auth = 0;
      }
      if (initObj.hasOwnProperty('takeoff_target_height')) {
        this.takeoff_target_height = initObj.takeoff_target_height
      }
      else {
        this.takeoff_target_height = 0.0;
      }
      if (initObj.hasOwnProperty('takeoff_velocity')) {
        this.takeoff_velocity = initObj.takeoff_velocity
      }
      else {
        this.takeoff_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('vo_latency')) {
        this.vo_latency = initObj.vo_latency
      }
      else {
        this.vo_latency = 0.0;
      }
      if (initObj.hasOwnProperty('landing_mode')) {
        this.landing_mode = initObj.landing_mode
      }
      else {
        this.landing_mode = 0;
      }
      if (initObj.hasOwnProperty('landing_velocity')) {
        this.landing_velocity = initObj.landing_velocity
      }
      else {
        this.landing_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('commander_ctrl_mode')) {
        this.commander_ctrl_mode = initObj.commander_ctrl_mode
      }
      else {
        this.commander_ctrl_mode = 0;
      }
      if (initObj.hasOwnProperty('bat_vol')) {
        this.bat_vol = initObj.bat_vol
      }
      else {
        this.bat_vol = 0.0;
      }
      if (initObj.hasOwnProperty('bat_remain')) {
        this.bat_remain = initObj.bat_remain
      }
      else {
        this.bat_remain = 0.0;
      }
      if (initObj.hasOwnProperty('is_armed')) {
        this.is_armed = initObj.is_armed
      }
      else {
        this.is_armed = false;
      }
      if (initObj.hasOwnProperty('rc_valid')) {
        this.rc_valid = initObj.rc_valid
      }
      else {
        this.rc_valid = false;
      }
      if (initObj.hasOwnProperty('onboard_cmd_valid')) {
        this.onboard_cmd_valid = initObj.onboard_cmd_valid
      }
      else {
        this.onboard_cmd_valid = false;
      }
      if (initObj.hasOwnProperty('vo_valid')) {
        this.vo_valid = initObj.vo_valid
      }
      else {
        this.vo_valid = false;
      }
      if (initObj.hasOwnProperty('djisdk_valid')) {
        this.djisdk_valid = initObj.djisdk_valid
      }
      else {
        this.djisdk_valid = false;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('ctrl_cmd')) {
        this.ctrl_cmd = initObj.ctrl_cmd
      }
      else {
        this.ctrl_cmd = new drone_pos_ctrl_cmd();
      }
      if (initObj.hasOwnProperty('imu_data')) {
        this.imu_data = initObj.imu_data
      }
      else {
        this.imu_data = new sensor_msgs.msg.Imu();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drone_commander_state
    // Serialize message field [ctrl_input_state]
    bufferOffset = _serializer.uint32(obj.ctrl_input_state, buffer, bufferOffset);
    // Serialize message field [flight_status]
    bufferOffset = _serializer.uint32(obj.flight_status, buffer, bufferOffset);
    // Serialize message field [control_auth]
    bufferOffset = _serializer.uint32(obj.control_auth, buffer, bufferOffset);
    // Serialize message field [takeoff_target_height]
    bufferOffset = _serializer.float64(obj.takeoff_target_height, buffer, bufferOffset);
    // Serialize message field [takeoff_velocity]
    bufferOffset = _serializer.float64(obj.takeoff_velocity, buffer, bufferOffset);
    // Serialize message field [vo_latency]
    bufferOffset = _serializer.float32(obj.vo_latency, buffer, bufferOffset);
    // Serialize message field [landing_mode]
    bufferOffset = _serializer.uint32(obj.landing_mode, buffer, bufferOffset);
    // Serialize message field [landing_velocity]
    bufferOffset = _serializer.float64(obj.landing_velocity, buffer, bufferOffset);
    // Serialize message field [commander_ctrl_mode]
    bufferOffset = _serializer.uint32(obj.commander_ctrl_mode, buffer, bufferOffset);
    // Serialize message field [bat_vol]
    bufferOffset = _serializer.float32(obj.bat_vol, buffer, bufferOffset);
    // Serialize message field [bat_remain]
    bufferOffset = _serializer.float32(obj.bat_remain, buffer, bufferOffset);
    // Serialize message field [is_armed]
    bufferOffset = _serializer.bool(obj.is_armed, buffer, bufferOffset);
    // Serialize message field [rc_valid]
    bufferOffset = _serializer.bool(obj.rc_valid, buffer, bufferOffset);
    // Serialize message field [onboard_cmd_valid]
    bufferOffset = _serializer.bool(obj.onboard_cmd_valid, buffer, bufferOffset);
    // Serialize message field [vo_valid]
    bufferOffset = _serializer.bool(obj.vo_valid, buffer, bufferOffset);
    // Serialize message field [djisdk_valid]
    bufferOffset = _serializer.bool(obj.djisdk_valid, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [ctrl_cmd]
    bufferOffset = drone_pos_ctrl_cmd.serialize(obj.ctrl_cmd, buffer, bufferOffset);
    // Serialize message field [imu_data]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.imu_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone_commander_state
    let len;
    let data = new drone_commander_state(null);
    // Deserialize message field [ctrl_input_state]
    data.ctrl_input_state = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flight_status]
    data.flight_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [control_auth]
    data.control_auth = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [takeoff_target_height]
    data.takeoff_target_height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [takeoff_velocity]
    data.takeoff_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vo_latency]
    data.vo_latency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [landing_mode]
    data.landing_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [landing_velocity]
    data.landing_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [commander_ctrl_mode]
    data.commander_ctrl_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bat_vol]
    data.bat_vol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bat_remain]
    data.bat_remain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_armed]
    data.is_armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rc_valid]
    data.rc_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [onboard_cmd_valid]
    data.onboard_cmd_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vo_valid]
    data.vo_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [djisdk_valid]
    data.djisdk_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ctrl_cmd]
    data.ctrl_cmd = drone_pos_ctrl_cmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu_data]
    data.imu_data = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Imu.getMessageSize(object.imu_data);
    return length + 266;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmtal_msgs/drone_commander_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95ace68b12ed603a8645498808e5a9bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 CTRL_INPUT_NONE=0
    uint32 CTRL_INPUT_RC=1
    uint32 CTRL_INPUT_ONBOARD=2
    
    uint32 ctrl_input_state
    
    
    uint32 FLIGHT_STATUS_IDLE=0 # Motor Stopped, on ground
    uint32 FLIGHT_STATUS_ARMED=1 # Armed, on ground
    uint32 FLIGHT_STATUS_IN_AIR=2 #Armed Inair
    uint32 FLIGHT_STATUS_CRASHED=3 # Crashed, Armed
    
    uint32 flight_status
    
    uint32 CTRL_AUTH_RC = 0
    uint32 CTRL_AUTH_APP = 1
    uint32 CTRL_AUTH_THIS = 2
    
    uint32 control_auth
    
    float64 takeoff_target_height
    float64 takeoff_velocity
    
    float32 vo_latency
    #0 vo landing
    #1 zero attitude landing
    
    uint32 LANDING_MODE_XYVEL = 0
    uint32 LANDING_MODE_ATT = 1
    
    uint32 landing_mode
    float64 landing_velocity
    
    uint32 CTRL_MODE_IDLE=0
    uint32 CTRL_MODE_TAKEOFF=1
    uint32 CTRL_MODE_LANDING=2
    uint32 CTRL_MODE_HOVER=3
    uint32 CTRL_MODE_POSVEL=4
    uint32 CTRL_MODE_ATT=5
    uint32 CTRL_MODE_MISSION=6
    
    uint32 commander_ctrl_mode
    
    float32 bat_vol
    float32 bat_remain
    
    bool is_armed
    bool rc_valid
    bool onboard_cmd_valid
    bool vo_valid
    bool djisdk_valid
    
    geometry_msgs/Point pos
    geometry_msgs/Point vel
    float64 yaw
    
    drone_pos_ctrl_cmd ctrl_cmd
    
    sensor_msgs/Imu imu_data
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: swarmtal_msgs/drone_pos_ctrl_cmd
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
    
    ================================================================================
    MSG: sensor_msgs/Imu
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    #
    # If the covariance of the measurement is known, it should be filled in (if all you know is the 
    # variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
    # data a covariance will have to be assumed or gotten from some other source
    #
    # If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
    # estimate), please set element 0 of the associated covariance matrix to -1
    # If you are interpreting this message, please check for a value of -1 in the first element of each 
    # covariance matrix, and disregard the associated estimate.
    
    Header header
    
    geometry_msgs/Quaternion orientation
    float64[9] orientation_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 angular_velocity
    float64[9] angular_velocity_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 linear_acceleration
    float64[9] linear_acceleration_covariance # Row major x, y z 
    
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
    const resolved = new drone_commander_state(null);
    if (msg.ctrl_input_state !== undefined) {
      resolved.ctrl_input_state = msg.ctrl_input_state;
    }
    else {
      resolved.ctrl_input_state = 0
    }

    if (msg.flight_status !== undefined) {
      resolved.flight_status = msg.flight_status;
    }
    else {
      resolved.flight_status = 0
    }

    if (msg.control_auth !== undefined) {
      resolved.control_auth = msg.control_auth;
    }
    else {
      resolved.control_auth = 0
    }

    if (msg.takeoff_target_height !== undefined) {
      resolved.takeoff_target_height = msg.takeoff_target_height;
    }
    else {
      resolved.takeoff_target_height = 0.0
    }

    if (msg.takeoff_velocity !== undefined) {
      resolved.takeoff_velocity = msg.takeoff_velocity;
    }
    else {
      resolved.takeoff_velocity = 0.0
    }

    if (msg.vo_latency !== undefined) {
      resolved.vo_latency = msg.vo_latency;
    }
    else {
      resolved.vo_latency = 0.0
    }

    if (msg.landing_mode !== undefined) {
      resolved.landing_mode = msg.landing_mode;
    }
    else {
      resolved.landing_mode = 0
    }

    if (msg.landing_velocity !== undefined) {
      resolved.landing_velocity = msg.landing_velocity;
    }
    else {
      resolved.landing_velocity = 0.0
    }

    if (msg.commander_ctrl_mode !== undefined) {
      resolved.commander_ctrl_mode = msg.commander_ctrl_mode;
    }
    else {
      resolved.commander_ctrl_mode = 0
    }

    if (msg.bat_vol !== undefined) {
      resolved.bat_vol = msg.bat_vol;
    }
    else {
      resolved.bat_vol = 0.0
    }

    if (msg.bat_remain !== undefined) {
      resolved.bat_remain = msg.bat_remain;
    }
    else {
      resolved.bat_remain = 0.0
    }

    if (msg.is_armed !== undefined) {
      resolved.is_armed = msg.is_armed;
    }
    else {
      resolved.is_armed = false
    }

    if (msg.rc_valid !== undefined) {
      resolved.rc_valid = msg.rc_valid;
    }
    else {
      resolved.rc_valid = false
    }

    if (msg.onboard_cmd_valid !== undefined) {
      resolved.onboard_cmd_valid = msg.onboard_cmd_valid;
    }
    else {
      resolved.onboard_cmd_valid = false
    }

    if (msg.vo_valid !== undefined) {
      resolved.vo_valid = msg.vo_valid;
    }
    else {
      resolved.vo_valid = false
    }

    if (msg.djisdk_valid !== undefined) {
      resolved.djisdk_valid = msg.djisdk_valid;
    }
    else {
      resolved.djisdk_valid = false
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Point.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Point()
    }

    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Point.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Point()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.ctrl_cmd !== undefined) {
      resolved.ctrl_cmd = drone_pos_ctrl_cmd.Resolve(msg.ctrl_cmd)
    }
    else {
      resolved.ctrl_cmd = new drone_pos_ctrl_cmd()
    }

    if (msg.imu_data !== undefined) {
      resolved.imu_data = sensor_msgs.msg.Imu.Resolve(msg.imu_data)
    }
    else {
      resolved.imu_data = new sensor_msgs.msg.Imu()
    }

    return resolved;
    }
};

// Constants for message
drone_commander_state.Constants = {
  CTRL_INPUT_NONE: 0,
  CTRL_INPUT_RC: 1,
  CTRL_INPUT_ONBOARD: 2,
  FLIGHT_STATUS_IDLE: 0,
  FLIGHT_STATUS_ARMED: 1,
  FLIGHT_STATUS_IN_AIR: 2,
  FLIGHT_STATUS_CRASHED: 3,
  CTRL_AUTH_RC: 0,
  CTRL_AUTH_APP: 1,
  CTRL_AUTH_THIS: 2,
  LANDING_MODE_XYVEL: 0,
  LANDING_MODE_ATT: 1,
  CTRL_MODE_IDLE: 0,
  CTRL_MODE_TAKEOFF: 1,
  CTRL_MODE_LANDING: 2,
  CTRL_MODE_HOVER: 3,
  CTRL_MODE_POSVEL: 4,
  CTRL_MODE_ATT: 5,
  CTRL_MODE_MISSION: 6,
}

module.exports = drone_commander_state;
