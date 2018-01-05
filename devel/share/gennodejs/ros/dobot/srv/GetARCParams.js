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

class GetARCParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetARCParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetARCParamsRequest
    let len;
    let data = new GetARCParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetARCParamsRequest';
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
    const resolved = new GetARCParamsRequest(null);
    return resolved;
    }
};

class GetARCParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.xyzVelocity = null;
      this.rVelocity = null;
      this.xyzAcceleration = null;
      this.rAcceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('xyzVelocity')) {
        this.xyzVelocity = initObj.xyzVelocity
      }
      else {
        this.xyzVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('rVelocity')) {
        this.rVelocity = initObj.rVelocity
      }
      else {
        this.rVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('xyzAcceleration')) {
        this.xyzAcceleration = initObj.xyzAcceleration
      }
      else {
        this.xyzAcceleration = 0.0;
      }
      if (initObj.hasOwnProperty('rAcceleration')) {
        this.rAcceleration = initObj.rAcceleration
      }
      else {
        this.rAcceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetARCParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [xyzVelocity]
    bufferOffset = _serializer.float32(obj.xyzVelocity, buffer, bufferOffset);
    // Serialize message field [rVelocity]
    bufferOffset = _serializer.float32(obj.rVelocity, buffer, bufferOffset);
    // Serialize message field [xyzAcceleration]
    bufferOffset = _serializer.float32(obj.xyzAcceleration, buffer, bufferOffset);
    // Serialize message field [rAcceleration]
    bufferOffset = _serializer.float32(obj.rAcceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetARCParamsResponse
    let len;
    let data = new GetARCParamsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [xyzVelocity]
    data.xyzVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rVelocity]
    data.rVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xyzAcceleration]
    data.xyzAcceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rAcceleration]
    data.rAcceleration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetARCParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '886db9a7d126004f299ba6b6878cb966';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 xyzVelocity
    float32 rVelocity
    float32 xyzAcceleration
    float32 rAcceleration
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetARCParamsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.xyzVelocity !== undefined) {
      resolved.xyzVelocity = msg.xyzVelocity;
    }
    else {
      resolved.xyzVelocity = 0.0
    }

    if (msg.rVelocity !== undefined) {
      resolved.rVelocity = msg.rVelocity;
    }
    else {
      resolved.rVelocity = 0.0
    }

    if (msg.xyzAcceleration !== undefined) {
      resolved.xyzAcceleration = msg.xyzAcceleration;
    }
    else {
      resolved.xyzAcceleration = 0.0
    }

    if (msg.rAcceleration !== undefined) {
      resolved.rAcceleration = msg.rAcceleration;
    }
    else {
      resolved.rAcceleration = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetARCParamsRequest,
  Response: GetARCParamsResponse,
  md5sum() { return '886db9a7d126004f299ba6b6878cb966'; },
  datatype() { return 'dobot/GetARCParams'; }
};
