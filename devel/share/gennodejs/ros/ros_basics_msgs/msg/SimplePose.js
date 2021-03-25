// Auto-generated. Do not edit!

// (in-package ros_basics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RPY = require('./RPY.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SimplePose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xyz = null;
      this.rpy = null;
    }
    else {
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new RPY();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimplePose
    // Serialize message field [xyz]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.xyz, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = RPY.serialize(obj.rpy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimplePose
    let len;
    let data = new SimplePose(null);
    // Deserialize message field [xyz]
    data.xyz = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = RPY.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_basics_msgs/SimplePose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ca46866baf4abe90def17040f56fbd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point xyz
    ros_basics_msgs/RPY rpy
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: ros_basics_msgs/RPY
    float64 roll
    float64 pitch
    float64 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimplePose(null);
    if (msg.xyz !== undefined) {
      resolved.xyz = geometry_msgs.msg.Point.Resolve(msg.xyz)
    }
    else {
      resolved.xyz = new geometry_msgs.msg.Point()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = RPY.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new RPY()
    }

    return resolved;
    }
};

module.exports = SimplePose;
