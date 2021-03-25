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


//-----------------------------------------------------------

class RemoveWaypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idx = null;
    }
    else {
      if (initObj.hasOwnProperty('idx')) {
        this.idx = initObj.idx
      }
      else {
        this.idx = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveWaypointRequest
    // Serialize message field [idx]
    bufferOffset = _serializer.uint32(obj.idx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveWaypointRequest
    let len;
    let data = new RemoveWaypointRequest(null);
    // Deserialize message field [idx]
    data.idx = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_basics_msgs/RemoveWaypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5322f435d05c56c40d0c329084ca3cb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 idx
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveWaypointRequest(null);
    if (msg.idx !== undefined) {
      resolved.idx = msg.idx;
    }
    else {
      resolved.idx = 0
    }

    return resolved;
    }
};

class RemoveWaypointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.removed = null;
    }
    else {
      if (initObj.hasOwnProperty('removed')) {
        this.removed = initObj.removed
      }
      else {
        this.removed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveWaypointResponse
    // Serialize message field [removed]
    bufferOffset = _serializer.bool(obj.removed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveWaypointResponse
    let len;
    let data = new RemoveWaypointResponse(null);
    // Deserialize message field [removed]
    data.removed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_basics_msgs/RemoveWaypointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53d1c4b4c99c9164c7e77611a99d3fb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool removed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveWaypointResponse(null);
    if (msg.removed !== undefined) {
      resolved.removed = msg.removed;
    }
    else {
      resolved.removed = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RemoveWaypointRequest,
  Response: RemoveWaypointResponse,
  md5sum() { return '034564533f8553dbc4b5af50cf500e64'; },
  datatype() { return 'ros_basics_msgs/RemoveWaypoint'; }
};
