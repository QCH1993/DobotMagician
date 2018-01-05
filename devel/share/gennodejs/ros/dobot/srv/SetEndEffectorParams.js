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

class SetEndEffectorParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xBias = null;
      this.yBias = null;
      this.zBias = null;
      this.isQueued = null;
    }
    else {
      if (initObj.hasOwnProperty('xBias')) {
        this.xBias = initObj.xBias
      }
      else {
        this.xBias = 0.0;
      }
      if (initObj.hasOwnProperty('yBias')) {
        this.yBias = initObj.yBias
      }
      else {
        this.yBias = 0.0;
      }
      if (initObj.hasOwnProperty('zBias')) {
        this.zBias = initObj.zBias
      }
      else {
        this.zBias = 0.0;
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
    // Serializes a message object of type SetEndEffectorParamsRequest
    // Serialize message field [xBias]
    bufferOffset = _serializer.float32(obj.xBias, buffer, bufferOffset);
    // Serialize message field [yBias]
    bufferOffset = _serializer.float32(obj.yBias, buffer, bufferOffset);
    // Serialize message field [zBias]
    bufferOffset = _serializer.float32(obj.zBias, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorParamsRequest
    let len;
    let data = new SetEndEffectorParamsRequest(null);
    // Deserialize message field [xBias]
    data.xBias = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yBias]
    data.yBias = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zBias]
    data.zBias = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetEndEffectorParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98648dd79874dd018bae73e190074b95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 xBias
    float32 yBias
    float32 zBias
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEndEffectorParamsRequest(null);
    if (msg.xBias !== undefined) {
      resolved.xBias = msg.xBias;
    }
    else {
      resolved.xBias = 0.0
    }

    if (msg.yBias !== undefined) {
      resolved.yBias = msg.yBias;
    }
    else {
      resolved.yBias = 0.0
    }

    if (msg.zBias !== undefined) {
      resolved.zBias = msg.zBias;
    }
    else {
      resolved.zBias = 0.0
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

class SetEndEffectorParamsResponse {
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
    // Serializes a message object of type SetEndEffectorParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorParamsResponse
    let len;
    let data = new SetEndEffectorParamsResponse(null);
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
    return 'dobot/SetEndEffectorParamsResponse';
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
    const resolved = new SetEndEffectorParamsResponse(null);
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
  Request: SetEndEffectorParamsRequest,
  Response: SetEndEffectorParamsResponse,
  md5sum() { return '65e2589a98b434e9e347ef66c32e4f96'; },
  datatype() { return 'dobot/SetEndEffectorParams'; }
};
