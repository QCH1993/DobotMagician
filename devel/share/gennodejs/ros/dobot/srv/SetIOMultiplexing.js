// Auto-generated. Do not edit!

// (in-package dobot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetIOMultiplexingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.address = null;
      this.multiplex = null;
      this.isQueued = null;
    }
    else {
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = 0;
      }
      if (initObj.hasOwnProperty('multiplex')) {
        this.multiplex = initObj.multiplex
      }
      else {
        this.multiplex = 0;
      }
      if (initObj.hasOwnProperty('isQueued')) {
        this.isQueued = initObj.isQueued
      }
      else {
        this.isQueued = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIOMultiplexingRequest
    // Serialize message field [address]
    bufferOffset = _serializer.uint8(obj.address, buffer, bufferOffset);
    // Serialize message field [multiplex]
    bufferOffset = _serializer.uint8(obj.multiplex, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIOMultiplexingRequest
    let len;
    let data = new SetIOMultiplexingRequest(null);
    // Deserialize message field [address]
    data.address = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [multiplex]
    data.multiplex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetIOMultiplexingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb0052d869cf2237ee918121fdfc9b4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 address
    uint8 multiplex
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIOMultiplexingRequest(null);
    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = 0
    }

    if (msg.multiplex !== undefined) {
      resolved.multiplex = msg.multiplex;
    }
    else {
      resolved.multiplex = 0
    }

    if (msg.isQueued !== undefined) {
      resolved.isQueued = msg.isQueued;
    }
    else {
      resolved.isQueued = false
    }

    return resolved;
    }
};

class SetIOMultiplexingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.queuedCmdIndex = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('queuedCmdIndex')) {
        this.queuedCmdIndex = initObj.queuedCmdIndex
      }
      else {
        this.queuedCmdIndex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIOMultiplexingResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIOMultiplexingResponse
    let len;
    let data = new SetIOMultiplexingResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [queuedCmdIndex]
    data.queuedCmdIndex = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetIOMultiplexingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbf7b461449133eb5dd6ebbd8d38dedc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    uint64 queuedCmdIndex
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIOMultiplexingResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.queuedCmdIndex !== undefined) {
      resolved.queuedCmdIndex = msg.queuedCmdIndex;
    }
    else {
      resolved.queuedCmdIndex = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetIOMultiplexingRequest,
  Response: SetIOMultiplexingResponse,
  md5sum() { return '0d42b2a07901322be1553ed3f1e55579'; },
  datatype() { return 'dobot/SetIOMultiplexing'; }
};
