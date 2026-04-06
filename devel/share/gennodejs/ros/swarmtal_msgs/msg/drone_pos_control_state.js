// Auto-generated. Do not edit!

// (in-package swarmtal_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class drone_pos_control_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Header = null;
      this.pose = null;
      this.imu_data = null;
      this.pitch_cmd = null;
      this.roll_cmd = null;
      this.yaw_cmd = null;
      this.thrust_cmd = null;
      this.pitch = null;
      this.roll = null;
      this.yaw = null;
      this.yaw_sp = null;
      this.acc_cmd = null;
      this.vel_cmd = null;
      this.global_vel = null;
      this.pos_sp = null;
      this.ctrl_mode = null;
      this.use_fc_yaw = null;
      this.count = null;
      this.max_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('Header')) {
        this.Header = initObj.Header
      }
      else {
        this.Header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('imu_data')) {
        this.imu_data = initObj.imu_data
      }
      else {
        this.imu_data = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('pitch_cmd')) {
        this.pitch_cmd = initObj.pitch_cmd
      }
      else {
        this.pitch_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('roll_cmd')) {
        this.roll_cmd = initObj.roll_cmd
      }
      else {
        this.roll_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_cmd')) {
        this.yaw_cmd = initObj.yaw_cmd
      }
      else {
        this.yaw_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_cmd')) {
        this.thrust_cmd = initObj.thrust_cmd
      }
      else {
        this.thrust_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_sp')) {
        this.yaw_sp = initObj.yaw_sp
      }
      else {
        this.yaw_sp = 0.0;
      }
      if (initObj.hasOwnProperty('acc_cmd')) {
        this.acc_cmd = initObj.acc_cmd
      }
      else {
        this.acc_cmd = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('vel_cmd')) {
        this.vel_cmd = initObj.vel_cmd
      }
      else {
        this.vel_cmd = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('global_vel')) {
        this.global_vel = initObj.global_vel
      }
      else {
        this.global_vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pos_sp')) {
        this.pos_sp = initObj.pos_sp
      }
      else {
        this.pos_sp = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ctrl_mode')) {
        this.ctrl_mode = initObj.ctrl_mode
      }
      else {
        this.ctrl_mode = 0;
      }
      if (initObj.hasOwnProperty('use_fc_yaw')) {
        this.use_fc_yaw = initObj.use_fc_yaw
      }
      else {
        this.use_fc_yaw = false;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
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
    // Serializes a message object of type drone_pos_control_state
    // Serialize message field [Header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.Header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [imu_data]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.imu_data, buffer, bufferOffset);
    // Serialize message field [pitch_cmd]
    bufferOffset = _serializer.float32(obj.pitch_cmd, buffer, bufferOffset);
    // Serialize message field [roll_cmd]
    bufferOffset = _serializer.float32(obj.roll_cmd, buffer, bufferOffset);
    // Serialize message field [yaw_cmd]
    bufferOffset = _serializer.float32(obj.yaw_cmd, buffer, bufferOffset);
    // Serialize message field [thrust_cmd]
    bufferOffset = _serializer.float32(obj.thrust_cmd, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [yaw_sp]
    bufferOffset = _serializer.float32(obj.yaw_sp, buffer, bufferOffset);
    // Serialize message field [acc_cmd]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acc_cmd, buffer, bufferOffset);
    // Serialize message field [vel_cmd]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vel_cmd, buffer, bufferOffset);
    // Serialize message field [global_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.global_vel, buffer, bufferOffset);
    // Serialize message field [pos_sp]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pos_sp, buffer, bufferOffset);
    // Serialize message field [ctrl_mode]
    bufferOffset = _serializer.uint32(obj.ctrl_mode, buffer, bufferOffset);
    // Serialize message field [use_fc_yaw]
    bufferOffset = _serializer.bool(obj.use_fc_yaw, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint64(obj.count, buffer, bufferOffset);
    // Serialize message field [max_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.max_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone_pos_control_state
    let len;
    let data = new drone_pos_control_state(null);
    // Deserialize message field [Header]
    data.Header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu_data]
    data.imu_data = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch_cmd]
    data.pitch_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_cmd]
    data.roll_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_cmd]
    data.yaw_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [thrust_cmd]
    data.thrust_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_sp]
    data.yaw_sp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_cmd]
    data.acc_cmd = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_cmd]
    data.vel_cmd = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_vel]
    data.global_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_sp]
    data.pos_sp = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ctrl_mode]
    data.ctrl_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [use_fc_yaw]
    data.use_fc_yaw = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [max_vel]
    data.max_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.Header);
    length += sensor_msgs.msg.Imu.getMessageSize(object.imu_data);
    return length + 221;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarmtal_msgs/drone_pos_control_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1284e85c66442b438c82756d23002796';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header Header
    
    geometry_msgs/Pose pose
    sensor_msgs/Imu imu_data
    float32 pitch_cmd
    float32 roll_cmd
    float32 yaw_cmd
    float32 thrust_cmd
    
    float32 pitch
    float32 roll
    float32 yaw
    
    float32 yaw_sp
    
    geometry_msgs/Vector3 acc_cmd
    geometry_msgs/Vector3 vel_cmd
    geometry_msgs/Vector3 global_vel
    
    geometry_msgs/Vector3 pos_sp
    
    uint32 ctrl_mode
    
    bool use_fc_yaw
    
    uint64 count
    
    geometry_msgs/Vector3 max_vel
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new drone_pos_control_state(null);
    if (msg.Header !== undefined) {
      resolved.Header = std_msgs.msg.Header.Resolve(msg.Header)
    }
    else {
      resolved.Header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.imu_data !== undefined) {
      resolved.imu_data = sensor_msgs.msg.Imu.Resolve(msg.imu_data)
    }
    else {
      resolved.imu_data = new sensor_msgs.msg.Imu()
    }

    if (msg.pitch_cmd !== undefined) {
      resolved.pitch_cmd = msg.pitch_cmd;
    }
    else {
      resolved.pitch_cmd = 0.0
    }

    if (msg.roll_cmd !== undefined) {
      resolved.roll_cmd = msg.roll_cmd;
    }
    else {
      resolved.roll_cmd = 0.0
    }

    if (msg.yaw_cmd !== undefined) {
      resolved.yaw_cmd = msg.yaw_cmd;
    }
    else {
      resolved.yaw_cmd = 0.0
    }

    if (msg.thrust_cmd !== undefined) {
      resolved.thrust_cmd = msg.thrust_cmd;
    }
    else {
      resolved.thrust_cmd = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.yaw_sp !== undefined) {
      resolved.yaw_sp = msg.yaw_sp;
    }
    else {
      resolved.yaw_sp = 0.0
    }

    if (msg.acc_cmd !== undefined) {
      resolved.acc_cmd = geometry_msgs.msg.Vector3.Resolve(msg.acc_cmd)
    }
    else {
      resolved.acc_cmd = new geometry_msgs.msg.Vector3()
    }

    if (msg.vel_cmd !== undefined) {
      resolved.vel_cmd = geometry_msgs.msg.Vector3.Resolve(msg.vel_cmd)
    }
    else {
      resolved.vel_cmd = new geometry_msgs.msg.Vector3()
    }

    if (msg.global_vel !== undefined) {
      resolved.global_vel = geometry_msgs.msg.Vector3.Resolve(msg.global_vel)
    }
    else {
      resolved.global_vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.pos_sp !== undefined) {
      resolved.pos_sp = geometry_msgs.msg.Vector3.Resolve(msg.pos_sp)
    }
    else {
      resolved.pos_sp = new geometry_msgs.msg.Vector3()
    }

    if (msg.ctrl_mode !== undefined) {
      resolved.ctrl_mode = msg.ctrl_mode;
    }
    else {
      resolved.ctrl_mode = 0
    }

    if (msg.use_fc_yaw !== undefined) {
      resolved.use_fc_yaw = msg.use_fc_yaw;
    }
    else {
      resolved.use_fc_yaw = false
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
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

module.exports = drone_pos_control_state;
