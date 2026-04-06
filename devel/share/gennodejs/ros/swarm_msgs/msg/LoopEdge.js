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

//-----------------------------------------------------------

class LoopEdge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ts_a = null;
      this.ts_b = null;
      this.drone_id_a = null;
      this.drone_id_b = null;
      this.keyframe_id_a = null;
      this.keyframe_id_b = null;
      this.relative_pose = null;
      this.self_pose_a = null;
      this.self_pose_b = null;
      this.pos_cov = null;
      this.ang_cov = null;
      this.pnp_inlier_num = null;
      this.is_4dof = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('ts_a')) {
        this.ts_a = initObj.ts_a
      }
      else {
        this.ts_a = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('ts_b')) {
        this.ts_b = initObj.ts_b
      }
      else {
        this.ts_b = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('drone_id_a')) {
        this.drone_id_a = initObj.drone_id_a
      }
      else {
        this.drone_id_a = 0;
      }
      if (initObj.hasOwnProperty('drone_id_b')) {
        this.drone_id_b = initObj.drone_id_b
      }
      else {
        this.drone_id_b = 0;
      }
      if (initObj.hasOwnProperty('keyframe_id_a')) {
        this.keyframe_id_a = initObj.keyframe_id_a
      }
      else {
        this.keyframe_id_a = 0;
      }
      if (initObj.hasOwnProperty('keyframe_id_b')) {
        this.keyframe_id_b = initObj.keyframe_id_b
      }
      else {
        this.keyframe_id_b = 0;
      }
      if (initObj.hasOwnProperty('relative_pose')) {
        this.relative_pose = initObj.relative_pose
      }
      else {
        this.relative_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('self_pose_a')) {
        this.self_pose_a = initObj.self_pose_a
      }
      else {
        this.self_pose_a = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('self_pose_b')) {
        this.self_pose_b = initObj.self_pose_b
      }
      else {
        this.self_pose_b = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pos_cov')) {
        this.pos_cov = initObj.pos_cov
      }
      else {
        this.pos_cov = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ang_cov')) {
        this.ang_cov = initObj.ang_cov
      }
      else {
        this.ang_cov = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pnp_inlier_num')) {
        this.pnp_inlier_num = initObj.pnp_inlier_num
      }
      else {
        this.pnp_inlier_num = 0;
      }
      if (initObj.hasOwnProperty('is_4dof')) {
        this.is_4dof = initObj.is_4dof
      }
      else {
        this.is_4dof = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopEdge
    // Serialize message field [ts_a]
    bufferOffset = _serializer.time(obj.ts_a, buffer, bufferOffset);
    // Serialize message field [ts_b]
    bufferOffset = _serializer.time(obj.ts_b, buffer, bufferOffset);
    // Serialize message field [drone_id_a]
    bufferOffset = _serializer.uint64(obj.drone_id_a, buffer, bufferOffset);
    // Serialize message field [drone_id_b]
    bufferOffset = _serializer.uint64(obj.drone_id_b, buffer, bufferOffset);
    // Serialize message field [keyframe_id_a]
    bufferOffset = _serializer.uint64(obj.keyframe_id_a, buffer, bufferOffset);
    // Serialize message field [keyframe_id_b]
    bufferOffset = _serializer.uint64(obj.keyframe_id_b, buffer, bufferOffset);
    // Serialize message field [relative_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.relative_pose, buffer, bufferOffset);
    // Serialize message field [self_pose_a]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.self_pose_a, buffer, bufferOffset);
    // Serialize message field [self_pose_b]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.self_pose_b, buffer, bufferOffset);
    // Serialize message field [pos_cov]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos_cov, buffer, bufferOffset);
    // Serialize message field [ang_cov]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ang_cov, buffer, bufferOffset);
    // Serialize message field [pnp_inlier_num]
    bufferOffset = _serializer.int32(obj.pnp_inlier_num, buffer, bufferOffset);
    // Serialize message field [is_4dof]
    bufferOffset = _serializer.bool(obj.is_4dof, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint64(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopEdge
    let len;
    let data = new LoopEdge(null);
    // Deserialize message field [ts_a]
    data.ts_a = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [ts_b]
    data.ts_b = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [drone_id_a]
    data.drone_id_a = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [drone_id_b]
    data.drone_id_b = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [keyframe_id_a]
    data.keyframe_id_a = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [keyframe_id_b]
    data.keyframe_id_b = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [relative_pose]
    data.relative_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [self_pose_a]
    data.self_pose_a = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [self_pose_b]
    data.self_pose_b = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_cov]
    data.pos_cov = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ang_cov]
    data.ang_cov = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pnp_inlier_num]
    data.pnp_inlier_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_4dof]
    data.is_4dof = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 277;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/LoopEdge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad50fe35eb11e19dfe778de2e9e9026b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time ts_a
    time ts_b
    uint64 drone_id_a
    uint64 drone_id_b
    uint64 keyframe_id_a
    uint64 keyframe_id_b
    geometry_msgs/Pose relative_pose
    
    geometry_msgs/Pose self_pose_a
    geometry_msgs/Pose self_pose_b
    
    geometry_msgs/Point pos_cov
    geometry_msgs/Point ang_cov
    
    #Details for loop
    int32 pnp_inlier_num
    bool is_4dof
    uint64 id
    
    #geometry_msgs/Point[] point_cloud_b
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoopEdge(null);
    if (msg.ts_a !== undefined) {
      resolved.ts_a = msg.ts_a;
    }
    else {
      resolved.ts_a = {secs: 0, nsecs: 0}
    }

    if (msg.ts_b !== undefined) {
      resolved.ts_b = msg.ts_b;
    }
    else {
      resolved.ts_b = {secs: 0, nsecs: 0}
    }

    if (msg.drone_id_a !== undefined) {
      resolved.drone_id_a = msg.drone_id_a;
    }
    else {
      resolved.drone_id_a = 0
    }

    if (msg.drone_id_b !== undefined) {
      resolved.drone_id_b = msg.drone_id_b;
    }
    else {
      resolved.drone_id_b = 0
    }

    if (msg.keyframe_id_a !== undefined) {
      resolved.keyframe_id_a = msg.keyframe_id_a;
    }
    else {
      resolved.keyframe_id_a = 0
    }

    if (msg.keyframe_id_b !== undefined) {
      resolved.keyframe_id_b = msg.keyframe_id_b;
    }
    else {
      resolved.keyframe_id_b = 0
    }

    if (msg.relative_pose !== undefined) {
      resolved.relative_pose = geometry_msgs.msg.Pose.Resolve(msg.relative_pose)
    }
    else {
      resolved.relative_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.self_pose_a !== undefined) {
      resolved.self_pose_a = geometry_msgs.msg.Pose.Resolve(msg.self_pose_a)
    }
    else {
      resolved.self_pose_a = new geometry_msgs.msg.Pose()
    }

    if (msg.self_pose_b !== undefined) {
      resolved.self_pose_b = geometry_msgs.msg.Pose.Resolve(msg.self_pose_b)
    }
    else {
      resolved.self_pose_b = new geometry_msgs.msg.Pose()
    }

    if (msg.pos_cov !== undefined) {
      resolved.pos_cov = geometry_msgs.msg.Point.Resolve(msg.pos_cov)
    }
    else {
      resolved.pos_cov = new geometry_msgs.msg.Point()
    }

    if (msg.ang_cov !== undefined) {
      resolved.ang_cov = geometry_msgs.msg.Point.Resolve(msg.ang_cov)
    }
    else {
      resolved.ang_cov = new geometry_msgs.msg.Point()
    }

    if (msg.pnp_inlier_num !== undefined) {
      resolved.pnp_inlier_num = msg.pnp_inlier_num;
    }
    else {
      resolved.pnp_inlier_num = 0
    }

    if (msg.is_4dof !== undefined) {
      resolved.is_4dof = msg.is_4dof;
    }
    else {
      resolved.is_4dof = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = LoopEdge;
