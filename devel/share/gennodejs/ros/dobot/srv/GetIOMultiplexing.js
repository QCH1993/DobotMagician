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

class GetIOMultiplexingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.address = null;
    }
    else {
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIOMultiplexingRequest
    // Serialize message field [address]
    bufferOffset = _serializer.uint8(obj.address, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIOMultiplexingRequest
    let len;
    let data = new GetIOMultiplexingRequest(null);
    // Deserialize message field [address]
    data.address = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetIOMultiplexingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '972132462544b1029bf37f19a88e11c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 address
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIOMultiplexingRequest(null);
    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = 0
    }

    return resolved;
    }
};

class GetIOMultiplexingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.multiplex = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('multiplex')) {
        this.multiplex = initObj.multiplex
      }
      else {
        this.multiplex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIOMultiplexingResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [multiplex]
    bufferOffset = _serializer.uint8(obj.multiplex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIOMultiplexingResponse
    let len;
    let data = new GetIOMultiplexingResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [multiplex]
    data.multiplex = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetIOMultiplexingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61bdcf53e1dc8779bd7c79b4dc9c2aa4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    uint8 multiplex
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIOMultiplexingResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.multiplex !== undefined) {
      resolved.multiplex = msg.multiplex;
    }
    else {
      resolved.multiplex = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetIOMultiplexingRequest,
  Response: GetIOMultiplexingResponse,
  md5sum() { return '30a9ee7733d17c6beafe8b39fe97a95c'; },
  datatype() { return 'dobot/GetIOMultiplexing'; }
};
