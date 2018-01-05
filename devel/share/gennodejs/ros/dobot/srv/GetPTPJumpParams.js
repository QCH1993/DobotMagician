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

class GetPTPJumpParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPTPJumpParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPTPJumpParamsRequest
    let len;
    let data = new GetPTPJumpParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetPTPJumpParamsRequest';
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
    const resolved = new GetPTPJumpParamsRequest(null);
    return resolved;
    }
};

class GetPTPJumpParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.jumpHeight = null;
      this.zLimit = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('jumpHeight')) {
        this.jumpHeight = initObj.jumpHeight
      }
      else {
        this.jumpHeight = 0.0;
      }
      if (initObj.hasOwnProperty('zLimit')) {
        this.zLimit = initObj.zLimit
      }
      else {
        this.zLimit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPTPJumpParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [jumpHeight]
    bufferOffset = _serializer.float32(obj.jumpHeight, buffer, bufferOffset);
    // Serialize message field [zLimit]
    bufferOffset = _serializer.float32(obj.zLimit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPTPJumpParamsResponse
    let len;
    let data = new GetPTPJumpParamsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [jumpHeight]
    data.jumpHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zLimit]
    data.zLimit = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetPTPJumpParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c789ca108051f9c81e48ec0ed44d3ab7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 jumpHeight
    float32 zLimit
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPTPJumpParamsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.jumpHeight !== undefined) {
      resolved.jumpHeight = msg.jumpHeight;
    }
    else {
      resolved.jumpHeight = 0.0
    }

    if (msg.zLimit !== undefined) {
      resolved.zLimit = msg.zLimit;
    }
    else {
      resolved.zLimit = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPTPJumpParamsRequest,
  Response: GetPTPJumpParamsResponse,
  md5sum() { return 'c789ca108051f9c81e48ec0ed44d3ab7'; },
  datatype() { return 'dobot/GetPTPJumpParams'; }
};
