// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImageDescriptor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_id = null;
      this.feature_descriptor = null;
      this.pose_drone = null;
      this.camera_extrinsic = null;
      this.image_desc = null;
      this.image_width = null;
      this.image_height = null;
      this.image = null;
      this.landmarks_2d_norm = null;
      this.landmarks_2d = null;
      this.landmarks_3d = null;
      this.landmarks_flag = null;
      this.prevent_adding_db = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('feature_descriptor')) {
        this.feature_descriptor = initObj.feature_descriptor
      }
      else {
        this.feature_descriptor = [];
      }
      if (initObj.hasOwnProperty('pose_drone')) {
        this.pose_drone = initObj.pose_drone
      }
      else {
        this.pose_drone = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('camera_extrinsic')) {
        this.camera_extrinsic = initObj.camera_extrinsic
      }
      else {
        this.camera_extrinsic = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('image_desc')) {
        this.image_desc = initObj.image_desc
      }
      else {
        this.image_desc = [];
      }
      if (initObj.hasOwnProperty('image_width')) {
        this.image_width = initObj.image_width
      }
      else {
        this.image_width = 0;
      }
      if (initObj.hasOwnProperty('image_height')) {
        this.image_height = initObj.image_height
      }
      else {
        this.image_height = 0;
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = [];
      }
      if (initObj.hasOwnProperty('landmarks_2d_norm')) {
        this.landmarks_2d_norm = initObj.landmarks_2d_norm
      }
      else {
        this.landmarks_2d_norm = [];
      }
      if (initObj.hasOwnProperty('landmarks_2d')) {
        this.landmarks_2d = initObj.landmarks_2d
      }
      else {
        this.landmarks_2d = [];
      }
      if (initObj.hasOwnProperty('landmarks_3d')) {
        this.landmarks_3d = initObj.landmarks_3d
      }
      else {
        this.landmarks_3d = [];
      }
      if (initObj.hasOwnProperty('landmarks_flag')) {
        this.landmarks_flag = initObj.landmarks_flag
      }
      else {
        this.landmarks_flag = [];
      }
      if (initObj.hasOwnProperty('prevent_adding_db')) {
        this.prevent_adding_db = initObj.prevent_adding_db
      }
      else {
        this.prevent_adding_db = false;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageDescriptor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.int32(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [feature_descriptor]
    bufferOffset = _arraySerializer.float32(obj.feature_descriptor, buffer, bufferOffset, null);
    // Serialize message field [pose_drone]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_drone, buffer, bufferOffset);
    // Serialize message field [camera_extrinsic]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.camera_extrinsic, buffer, bufferOffset);
    // Serialize message field [image_desc]
    bufferOffset = _arraySerializer.float32(obj.image_desc, buffer, bufferOffset, null);
    // Serialize message field [image_width]
    bufferOffset = _serializer.int32(obj.image_width, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.int32(obj.image_height, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = _arraySerializer.uint8(obj.image, buffer, bufferOffset, null);
    // Serialize message field [landmarks_2d_norm]
    // Serialize the length for message field [landmarks_2d_norm]
    bufferOffset = _serializer.uint32(obj.landmarks_2d_norm.length, buffer, bufferOffset);
    obj.landmarks_2d_norm.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [landmarks_2d]
    // Serialize the length for message field [landmarks_2d]
    bufferOffset = _serializer.uint32(obj.landmarks_2d.length, buffer, bufferOffset);
    obj.landmarks_2d.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [landmarks_3d]
    // Serialize the length for message field [landmarks_3d]
    bufferOffset = _serializer.uint32(obj.landmarks_3d.length, buffer, bufferOffset);
    obj.landmarks_3d.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [landmarks_flag]
    bufferOffset = _arraySerializer.uint8(obj.landmarks_flag, buffer, bufferOffset, null);
    // Serialize message field [prevent_adding_db]
    bufferOffset = _serializer.bool(obj.prevent_adding_db, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int32(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageDescriptor
    let len;
    let data = new ImageDescriptor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [feature_descriptor]
    data.feature_descriptor = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose_drone]
    data.pose_drone = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_extrinsic]
    data.camera_extrinsic = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_desc]
    data.image_desc = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [image_width]
    data.image_width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [landmarks_2d_norm]
    // Deserialize array length for message field [landmarks_2d_norm]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks_2d_norm = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks_2d_norm[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [landmarks_2d]
    // Deserialize array length for message field [landmarks_2d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks_2d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks_2d[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [landmarks_3d]
    // Deserialize array length for message field [landmarks_3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks_3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks_3d[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [landmarks_flag]
    data.landmarks_flag = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [prevent_adding_db]
    data.prevent_adding_db = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.feature_descriptor.length;
    length += 4 * object.image_desc.length;
    length += object.image.length;
    length += 12 * object.landmarks_2d_norm.length;
    length += 12 * object.landmarks_2d.length;
    length += 12 * object.landmarks_3d.length;
    length += object.landmarks_flag.length;
    return length + 157;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/ImageDescriptor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f5e8e454632afe4a9ed9bcee95f3cff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ImageDescriptor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.feature_descriptor !== undefined) {
      resolved.feature_descriptor = msg.feature_descriptor;
    }
    else {
      resolved.feature_descriptor = []
    }

    if (msg.pose_drone !== undefined) {
      resolved.pose_drone = geometry_msgs.msg.Pose.Resolve(msg.pose_drone)
    }
    else {
      resolved.pose_drone = new geometry_msgs.msg.Pose()
    }

    if (msg.camera_extrinsic !== undefined) {
      resolved.camera_extrinsic = geometry_msgs.msg.Pose.Resolve(msg.camera_extrinsic)
    }
    else {
      resolved.camera_extrinsic = new geometry_msgs.msg.Pose()
    }

    if (msg.image_desc !== undefined) {
      resolved.image_desc = msg.image_desc;
    }
    else {
      resolved.image_desc = []
    }

    if (msg.image_width !== undefined) {
      resolved.image_width = msg.image_width;
    }
    else {
      resolved.image_width = 0
    }

    if (msg.image_height !== undefined) {
      resolved.image_height = msg.image_height;
    }
    else {
      resolved.image_height = 0
    }

    if (msg.image !== undefined) {
      resolved.image = msg.image;
    }
    else {
      resolved.image = []
    }

    if (msg.landmarks_2d_norm !== undefined) {
      resolved.landmarks_2d_norm = new Array(msg.landmarks_2d_norm.length);
      for (let i = 0; i < resolved.landmarks_2d_norm.length; ++i) {
        resolved.landmarks_2d_norm[i] = geometry_msgs.msg.Point32.Resolve(msg.landmarks_2d_norm[i]);
      }
    }
    else {
      resolved.landmarks_2d_norm = []
    }

    if (msg.landmarks_2d !== undefined) {
      resolved.landmarks_2d = new Array(msg.landmarks_2d.length);
      for (let i = 0; i < resolved.landmarks_2d.length; ++i) {
        resolved.landmarks_2d[i] = geometry_msgs.msg.Point32.Resolve(msg.landmarks_2d[i]);
      }
    }
    else {
      resolved.landmarks_2d = []
    }

    if (msg.landmarks_3d !== undefined) {
      resolved.landmarks_3d = new Array(msg.landmarks_3d.length);
      for (let i = 0; i < resolved.landmarks_3d.length; ++i) {
        resolved.landmarks_3d[i] = geometry_msgs.msg.Point32.Resolve(msg.landmarks_3d[i]);
      }
    }
    else {
      resolved.landmarks_3d = []
    }

    if (msg.landmarks_flag !== undefined) {
      resolved.landmarks_flag = msg.landmarks_flag;
    }
    else {
      resolved.landmarks_flag = []
    }

    if (msg.prevent_adding_db !== undefined) {
      resolved.prevent_adding_db = msg.prevent_adding_db;
    }
    else {
      resolved.prevent_adding_db = false
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    return resolved;
    }
};

module.exports = ImageDescriptor;
