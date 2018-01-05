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

class SetPTPJumpParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jumpHeight = null;
      this.zLimit = null;
      this.isQueued = null;
    }
    else {
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
      if (initObj.hasOwnProperty('isQueued')) {
        this.isQueued = initObj.isQueued
      }
      else {
        this.isQueued = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPTPJumpParamsRequest
    // Serialize message field [jumpHeight]
    bufferOffset = _serializer.float32(obj.jumpHeight, buffer, bufferOffset);
    // Serialize message field [zLimit]
    bufferOffset = _serializer.float32(obj.zLimit, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPTPJumpParamsRequest
    let len;
    let data = new SetPTPJumpParamsRequest(null);
    // Deserialize message field [jumpHeight]
    data.jumpHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zLimit]
    data.zLimit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetPTPJumpParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c706ca9844b16def2443e216338d8d27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 jumpHeight
    float32 zLimit
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPTPJumpParamsRequest(null);
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

    if (msg.isQueued !== undefined) {
      resolved.isQueued = msg.isQueued;
    }
    else {
      resolved.isQueued = false
    }

    return resolved;
    }
};

class SetPTPJumpParamsResponse {
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
    // Serializes a message object of type SetPTPJumpParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPTPJumpParamsResponse
    let len;
    let data = new SetPTPJumpParamsResponse(null);
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
    return 'dobot/SetPTPJumpParamsResponse';
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
    const resolved = new SetPTPJumpParamsResponse(null);
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
  Request: SetPTPJumpParamsRequest,
  Response: SetPTPJumpParamsResponse,
  md5sum() { return '9264d5750a7f398bdbc1bbd16ec60e63'; },
  datatype() { return 'dobot/SetPTPJumpParams'; }
};
