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

class SetJOGCommonParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocityRatio = null;
      this.accelerationRatio = null;
      this.isQueued = null;
    }
    else {
      if (initObj.hasOwnProperty('velocityRatio')) {
        this.velocityRatio = initObj.velocityRatio
      }
      else {
        this.velocityRatio = 0.0;
      }
      if (initObj.hasOwnProperty('accelerationRatio')) {
        this.accelerationRatio = initObj.accelerationRatio
      }
      else {
        this.accelerationRatio = 0.0;
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
    // Serializes a message object of type SetJOGCommonParamsRequest
    // Serialize message field [velocityRatio]
    bufferOffset = _serializer.float32(obj.velocityRatio, buffer, bufferOffset);
    // Serialize message field [accelerationRatio]
    bufferOffset = _serializer.float32(obj.accelerationRatio, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJOGCommonParamsRequest
    let len;
    let data = new SetJOGCommonParamsRequest(null);
    // Deserialize message field [velocityRatio]
    data.velocityRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerationRatio]
    data.accelerationRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetJOGCommonParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e4dfb14c361852ecf51f33906a36bdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 velocityRatio
    float32 accelerationRatio
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJOGCommonParamsRequest(null);
    if (msg.velocityRatio !== undefined) {
      resolved.velocityRatio = msg.velocityRatio;
    }
    else {
      resolved.velocityRatio = 0.0
    }

    if (msg.accelerationRatio !== undefined) {
      resolved.accelerationRatio = msg.accelerationRatio;
    }
    else {
      resolved.accelerationRatio = 0.0
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

class SetJOGCommonParamsResponse {
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
    // Serializes a message object of type SetJOGCommonParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJOGCommonParamsResponse
    let len;
    let data = new SetJOGCommonParamsResponse(null);
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
    return 'dobot/SetJOGCommonParamsResponse';
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
    const resolved = new SetJOGCommonParamsResponse(null);
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
  Request: SetJOGCommonParamsRequest,
  Response: SetJOGCommonParamsResponse,
  md5sum() { return '07fac5c7832f03b11ac295e63e130ee0'; },
  datatype() { return 'dobot/SetJOGCommonParams'; }
};
