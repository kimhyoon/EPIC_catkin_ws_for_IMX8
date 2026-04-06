// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImageDescriptor = require('./ImageDescriptor.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FisheyeFrameDescriptor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.prevent_adding_db = null;
      this.landmark_num = null;
      this.drone_id = null;
      this.msg_id = null;
      this.pose_drone = null;
      this.images = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('prevent_adding_db')) {
        this.prevent_adding_db = initObj.prevent_adding_db
      }
      else {
        this.prevent_adding_db = false;
      }
      if (initObj.hasOwnProperty('landmark_num')) {
        this.landmark_num = initObj.landmark_num
      }
      else {
        this.landmark_num = 0;
      }
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('msg_id')) {
        this.msg_id = initObj.msg_id
      }
      else {
        this.msg_id = 0;
      }
      if (initObj.hasOwnProperty('pose_drone')) {
        this.pose_drone = initObj.pose_drone
      }
      else {
        this.pose_drone = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('images')) {
        this.images = initObj.images
      }
      else {
        this.images = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FisheyeFrameDescriptor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [prevent_adding_db]
    bufferOffset = _serializer.bool(obj.prevent_adding_db, buffer, bufferOffset);
    // Serialize message field [landmark_num]
    bufferOffset = _serializer.int32(obj.landmark_num, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.int32(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [msg_id]
    bufferOffset = _serializer.int64(obj.msg_id, buffer, bufferOffset);
    // Serialize message field [pose_drone]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_drone, buffer, bufferOffset);
    // Serialize message field [images]
    // Serialize the length for message field [images]
    bufferOffset = _serializer.uint32(obj.images.length, buffer, bufferOffset);
    obj.images.forEach((val) => {
      bufferOffset = ImageDescriptor.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FisheyeFrameDescriptor
    let len;
    let data = new FisheyeFrameDescriptor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [prevent_adding_db]
    data.prevent_adding_db = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [landmark_num]
    data.landmark_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [msg_id]
    data.msg_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pose_drone]
    data.pose_drone = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [images]
    // Deserialize array length for message field [images]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.images = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.images[i] = ImageDescriptor.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.images.forEach((val) => {
      length += ImageDescriptor.getMessageSize(val);
    });
    return length + 77;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/FisheyeFrameDescriptor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06020b9f79d2ac92cae2a950ef662e84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool prevent_adding_db
    int32 landmark_num
    int32 drone_id
    int64 msg_id
    geometry_msgs/Pose pose_drone
    ImageDescriptor[] images
    
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
    MSG: swarm_msgs/ImageDescriptor
    Header header
    int32 drone_id
    
    float32[] feature_descriptor
    
    geometry_msgs/Pose pose_drone
    geometry_msgs/Pose camera_extrinsic
    
    float32[] image_desc
    int32 image_width
    int32 image_height
    uint8[] image
    
    geometry_msgs/Point32[] landmarks_2d_norm
    geometry_msgs/Point32[] landmarks_2d
    geometry_msgs/Point32[] landmarks_3d
    uint8[] landmarks_flag
    bool prevent_adding_db
    
    int32 direction
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FisheyeFrameDescriptor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.prevent_adding_db !== undefined) {
      resolved.prevent_adding_db = msg.prevent_adding_db;
    }
    else {
      resolved.prevent_adding_db = false
    }

    if (msg.landmark_num !== undefined) {
      resolved.landmark_num = msg.landmark_num;
    }
    else {
      resolved.landmark_num = 0
    }

    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.msg_id !== undefined) {
      resolved.msg_id = msg.msg_id;
    }
    else {
      resolved.msg_id = 0
    }

    if (msg.pose_drone !== undefined) {
      resolved.pose_drone = geometry_msgs.msg.Pose.Resolve(msg.pose_drone)
    }
    else {
      resolved.pose_drone = new geometry_msgs.msg.Pose()
    }

    if (msg.images !== undefined) {
      resolved.images = new Array(msg.images.length);
      for (let i = 0; i < resolved.images.length; ++i) {
        resolved.images[i] = ImageDescriptor.Resolve(msg.images[i]);
      }
    }
    else {
      resolved.images = []
    }

    return resolved;
    }
};

module.exports = FisheyeFrameDescriptor;
