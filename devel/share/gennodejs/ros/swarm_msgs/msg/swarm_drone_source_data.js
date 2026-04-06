// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class swarm_drone_source_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_num = null;
      this.self_id = null;
      this.drone_self_odoms = null;
      this.ids = null;
      this.active = null;
      this.distance_matrix = null;
      this.distance_time = null;
      this.self_frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drone_num')) {
        this.drone_num = initObj.drone_num
      }
      else {
        this.drone_num = 0;
      }
      if (initObj.hasOwnProperty('self_id')) {
        this.self_id = initObj.self_id
      }
      else {
        this.self_id = 0;
      }
      if (initObj.hasOwnProperty('drone_self_odoms')) {
        this.drone_self_odoms = initObj.drone_self_odoms
      }
      else {
        this.drone_self_odoms = [];
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = [];
      }
      if (initObj.hasOwnProperty('distance_matrix')) {
        this.distance_matrix = initObj.distance_matrix
      }
      else {
        this.distance_matrix = [];
      }
      if (initObj.hasOwnProperty('distance_time')) {
        this.distance_time = initObj.distance_time
      }
      else {
        this.distance_time = [];
      }
      if (initObj.hasOwnProperty('self_frame_id')) {
        this.self_frame_id = initObj.self_frame_id
      }
      else {
        this.self_frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarm_drone_source_data
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_num]
    bufferOffset = _serializer.int32(obj.drone_num, buffer, bufferOffset);
    // Serialize message field [self_id]
    bufferOffset = _serializer.uint32(obj.self_id, buffer, bufferOffset);
    // Serialize message field [drone_self_odoms]
    // Serialize the length for message field [drone_self_odoms]
    bufferOffset = _serializer.uint32(obj.drone_self_odoms.length, buffer, bufferOffset);
    obj.drone_self_odoms.forEach((val) => {
      bufferOffset = nav_msgs.msg.Odometry.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.uint32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [active]
    bufferOffset = _arraySerializer.bool(obj.active, buffer, bufferOffset, null);
    // Serialize message field [distance_matrix]
    bufferOffset = _arraySerializer.float32(obj.distance_matrix, buffer, bufferOffset, null);
    // Serialize message field [distance_time]
    bufferOffset = _arraySerializer.uint32(obj.distance_time, buffer, bufferOffset, null);
    // Serialize message field [self_frame_id]
    bufferOffset = _serializer.string(obj.self_frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarm_drone_source_data
    let len;
    let data = new swarm_drone_source_data(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_num]
    data.drone_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [self_id]
    data.self_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [drone_self_odoms]
    // Deserialize array length for message field [drone_self_odoms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drone_self_odoms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drone_self_odoms[i] = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [active]
    data.active = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [distance_matrix]
    data.distance_matrix = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [distance_time]
    data.distance_time = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [self_frame_id]
    data.self_frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.drone_self_odoms.forEach((val) => {
      length += nav_msgs.msg.Odometry.getMessageSize(val);
    });
    length += 4 * object.ids.length;
    length += object.active.length;
    length += 4 * object.distance_matrix.length;
    length += 4 * object.distance_time.length;
    length += _getByteLength(object.self_frame_id);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/swarm_drone_source_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed292949bcc7aff7a6c1948c5595d627';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 drone_num
    uint32 self_id
    nav_msgs/Odometry[] drone_self_odoms
    uint32[] ids
    bool[] active
    float32[] distance_matrix
    uint32[] distance_time
    string self_frame_id
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
    MSG: nav_msgs/Odometry
    # This represents an estimate of a position and velocity in free space.  
    # The pose in this message should be specified in the coordinate frame given by header.frame_id.
    # The twist in this message should be specified in the coordinate frame given by the child_frame_id
    Header header
    string child_frame_id
    geometry_msgs/PoseWithCovariance pose
    geometry_msgs/TwistWithCovariance twist
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new swarm_drone_source_data(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drone_num !== undefined) {
      resolved.drone_num = msg.drone_num;
    }
    else {
      resolved.drone_num = 0
    }

    if (msg.self_id !== undefined) {
      resolved.self_id = msg.self_id;
    }
    else {
      resolved.self_id = 0
    }

    if (msg.drone_self_odoms !== undefined) {
      resolved.drone_self_odoms = new Array(msg.drone_self_odoms.length);
      for (let i = 0; i < resolved.drone_self_odoms.length; ++i) {
        resolved.drone_self_odoms[i] = nav_msgs.msg.Odometry.Resolve(msg.drone_self_odoms[i]);
      }
    }
    else {
      resolved.drone_self_odoms = []
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = []
    }

    if (msg.distance_matrix !== undefined) {
      resolved.distance_matrix = msg.distance_matrix;
    }
    else {
      resolved.distance_matrix = []
    }

    if (msg.distance_time !== undefined) {
      resolved.distance_time = msg.distance_time;
    }
    else {
      resolved.distance_time = []
    }

    if (msg.self_frame_id !== undefined) {
      resolved.self_frame_id = msg.self_frame_id;
    }
    else {
      resolved.self_frame_id = ''
    }

    return resolved;
    }
};

module.exports = swarm_drone_source_data;
