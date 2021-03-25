// Auto-generated. Do not edit!

// (in-package ros_basics_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CurrentWaypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentWaypointRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentWaypointRequest
    let len;
    let data = new CurrentWaypointRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_basics_msgs/CurrentWaypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentWaypointRequest(null);
    return resolved;
    }
};

class CurrentWaypointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.is_empty = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('is_empty')) {
        this.is_empty = initObj.is_empty
      }
      else {
        this.is_empty = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentWaypointResponse
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [is_empty]
    bufferOffset = _serializer.bool(obj.is_empty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentWaypointResponse
    let len;
    let data = new CurrentWaypointResponse(null);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_empty]
    data.is_empty = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_basics_msgs/CurrentWaypointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '509ad6487577c30d7a7462175b53403c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D goal
    bool is_empty 
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentWaypointResponse(null);
    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Pose2D.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Pose2D()
    }

    if (msg.is_empty !== undefined) {
      resolved.is_empty = msg.is_empty;
    }
    else {
      resolved.is_empty = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CurrentWaypointRequest,
  Response: CurrentWaypointResponse,
  md5sum() { return '509ad6487577c30d7a7462175b53403c'; },
  datatype() { return 'ros_basics_msgs/CurrentWaypoint'; }
};
