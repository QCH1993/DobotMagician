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

class SetPTPCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ptpMode = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.r = null;
    }
    else {
      if (initObj.hasOwnProperty('ptpMode')) {
        this.ptpMode = initObj.ptpMode
      }
      else {
        this.ptpMode = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPTPCmdRequest
    // Serialize message field [ptpMode]
    bufferOffset = _serializer.uint8(obj.ptpMode, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float32(obj.r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPTPCmdRequest
    let len;
    let data = new SetPTPCmdRequest(null);
    // Deserialize message field [ptpMode]
    data.ptpMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetPTPCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb740859230cd62a75096d59fd085a9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ptpMode
    float32 x
    float32 y
    float32 z
    float32 r
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPTPCmdRequest(null);
    if (msg.ptpMode !== undefined) {
      resolved.ptpMode = msg.ptpMode;
    }
    else {
      resolved.ptpMode = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    return resolved;
    }
};

class SetPTPCmdResponse {
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
    // Serializes a message object of type SetPTPCmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPTPCmdResponse
    let len;
    let data = new SetPTPCmdResponse(null);
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
    return 'dobot/SetPTPCmdResponse';
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
    const resolved = new SetPTPCmdResponse(null);
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
  Request: SetPTPCmdRequest,
  Response: SetPTPCmdResponse,
  md5sum() { return '03a8de180cc7dcbaafb5daf5cd3d712e'; },
  datatype() { return 'dobot/SetPTPCmd'; }
};
