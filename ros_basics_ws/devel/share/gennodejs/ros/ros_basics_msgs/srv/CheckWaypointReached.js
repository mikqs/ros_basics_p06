// Auto-generated. Do not edit!

// (in-package ros_basics_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SimplePoseStamped = require('../msg/SimplePoseStamped.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CheckWaypointReachedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.verbose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new SimplePoseStamped();
      }
      if (initObj.hasOwnProperty('verbose')) {
        this.verbose = initObj.verbose
      }
      else {
        this.verbose = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckWaypointReachedRequest
    // Serialize message field [pose]
    bufferOffset = SimplePoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [verbose]
    bufferOffset = _serializer.bool(obj.verbose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckWaypointReachedRequest
    let len;
    let data = new CheckWaypointReachedRequest(null);
    // Deserialize message field [pose]
    data.pose = SimplePoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [verbose]
    data.verbose = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SimplePoseStamped.getMessageSize(object.pose);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_basics_msgs/CheckWaypointReachedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1aa5caaaa46dfadf42e81cbbe38ef1c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SimplePoseStamped pose
    bool verbose
    
    ================================================================================
    MSG: ros_basics_msgs/SimplePoseStamped
    Header header
    ros_basics_msgs/SimplePose pose
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
    MSG: ros_basics_msgs/SimplePose
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
    const resolved = new CheckWaypointReachedRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = SimplePoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new SimplePoseStamped()
    }

    if (msg.verbose !== undefined) {
      resolved.verbose = msg.verbose;
    }
    else {
      resolved.verbose = false
    }

    return resolved;
    }
};

class CheckWaypointReachedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reached = null;
    }
    else {
      if (initObj.hasOwnProperty('reached')) {
        this.reached = initObj.reached
      }
      else {
        this.reached = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckWaypointReachedResponse
    // Serialize message field [reached]
    bufferOffset = _serializer.bool(obj.reached, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckWaypointReachedResponse
    let len;
    let data = new CheckWaypointReachedResponse(null);
    // Deserialize message field [reached]
    data.reached = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_basics_msgs/CheckWaypointReachedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80204a6ff2622a7071680d5597cbd3aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reached
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckWaypointReachedResponse(null);
    if (msg.reached !== undefined) {
      resolved.reached = msg.reached;
    }
    else {
      resolved.reached = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckWaypointReachedRequest,
  Response: CheckWaypointReachedResponse,
  md5sum() { return '04f34cae25ac370b7cb9f4cd6bf31ca3'; },
  datatype() { return 'ros_basics_msgs/CheckWaypointReached'; }
};
