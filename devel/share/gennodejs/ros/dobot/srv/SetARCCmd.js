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

class SetARCCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x1 = null;
      this.y1 = null;
      this.z1 = null;
      this.r1 = null;
      this.x2 = null;
      this.y2 = null;
      this.z2 = null;
      this.r2 = null;
    }
    else {
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0.0;
      }
      if (initObj.hasOwnProperty('z1')) {
        this.z1 = initObj.z1
      }
      else {
        this.z1 = 0.0;
      }
      if (initObj.hasOwnProperty('r1')) {
        this.r1 = initObj.r1
      }
      else {
        this.r1 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0.0;
      }
      if (initObj.hasOwnProperty('z2')) {
        this.z2 = initObj.z2
      }
      else {
        this.z2 = 0.0;
      }
      if (initObj.hasOwnProperty('r2')) {
        this.r2 = initObj.r2
      }
      else {
        this.r2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetARCCmdRequest
    // Serialize message field [x1]
    bufferOffset = _serializer.float32(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.float32(obj.y1, buffer, bufferOffset);
    // Serialize message field [z1]
    bufferOffset = _serializer.float32(obj.z1, buffer, bufferOffset);
    // Serialize message field [r1]
    bufferOffset = _serializer.float32(obj.r1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float32(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.float32(obj.y2, buffer, bufferOffset);
    // Serialize message field [z2]
    bufferOffset = _serializer.float32(obj.z2, buffer, bufferOffset);
    // Serialize message field [r2]
    bufferOffset = _serializer.float32(obj.r2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetARCCmdRequest
    let len;
    let data = new SetARCCmdRequest(null);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z1]
    data.z1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r1]
    data.r1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z2]
    data.z2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r2]
    data.r2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetARCCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a21ff454d6d7cacb84b15fe1f9c70626';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x1
    float32 y1
    float32 z1
    float32 r1
    float32 x2
    float32 y2
    float32 z2
    float32 r2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetARCCmdRequest(null);
    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0.0
    }

    if (msg.z1 !== undefined) {
      resolved.z1 = msg.z1;
    }
    else {
      resolved.z1 = 0.0
    }

    if (msg.r1 !== undefined) {
      resolved.r1 = msg.r1;
    }
    else {
      resolved.r1 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0.0
    }

    if (msg.z2 !== undefined) {
      resolved.z2 = msg.z2;
    }
    else {
      resolved.z2 = 0.0
    }

    if (msg.r2 !== undefined) {
      resolved.r2 = msg.r2;
    }
    else {
      resolved.r2 = 0.0
    }

    return resolved;
    }
};

class SetARCCmdResponse {
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
    // Serializes a message object of type SetARCCmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetARCCmdResponse
    let len;
    let data = new SetARCCmdResponse(null);
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
    return 'dobot/SetARCCmdResponse';
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
    const resolved = new SetARCCmdResponse(null);
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
  Request: SetARCCmdRequest,
  Response: SetARCCmdResponse,
  md5sum() { return '6b277c29ebdf53b160a46c83993b3c02'; },
  datatype() { return 'dobot/SetARCCmd'; }
};
