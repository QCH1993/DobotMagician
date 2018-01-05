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

class SetCPParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planAcc = null;
      this.junctionVel = null;
      this.acc = null;
      this.realTimeTrack = null;
      this.isQueued = null;
    }
    else {
      if (initObj.hasOwnProperty('planAcc')) {
        this.planAcc = initObj.planAcc
      }
      else {
        this.planAcc = 0.0;
      }
      if (initObj.hasOwnProperty('junctionVel')) {
        this.junctionVel = initObj.junctionVel
      }
      else {
        this.junctionVel = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('realTimeTrack')) {
        this.realTimeTrack = initObj.realTimeTrack
      }
      else {
        this.realTimeTrack = 0;
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
    // Serializes a message object of type SetCPParamsRequest
    // Serialize message field [planAcc]
    bufferOffset = _serializer.float32(obj.planAcc, buffer, bufferOffset);
    // Serialize message field [junctionVel]
    bufferOffset = _serializer.float32(obj.junctionVel, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    // Serialize message field [realTimeTrack]
    bufferOffset = _serializer.uint8(obj.realTimeTrack, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCPParamsRequest
    let len;
    let data = new SetCPParamsRequest(null);
    // Deserialize message field [planAcc]
    data.planAcc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [junctionVel]
    data.junctionVel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [realTimeTrack]
    data.realTimeTrack = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetCPParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '554ea4f3eb746a3d6db4a5ca9e210a01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 planAcc
    float32 junctionVel
    float32 acc
    uint8 realTimeTrack
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCPParamsRequest(null);
    if (msg.planAcc !== undefined) {
      resolved.planAcc = msg.planAcc;
    }
    else {
      resolved.planAcc = 0.0
    }

    if (msg.junctionVel !== undefined) {
      resolved.junctionVel = msg.junctionVel;
    }
    else {
      resolved.junctionVel = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.realTimeTrack !== undefined) {
      resolved.realTimeTrack = msg.realTimeTrack;
    }
    else {
      resolved.realTimeTrack = 0
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

class SetCPParamsResponse {
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
    // Serializes a message object of type SetCPParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCPParamsResponse
    let len;
    let data = new SetCPParamsResponse(null);
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
    return 'dobot/SetCPParamsResponse';
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
    const resolved = new SetCPParamsResponse(null);
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
  Request: SetCPParamsRequest,
  Response: SetCPParamsResponse,
  md5sum() { return 'f1c22d901d2cad5a8687473723199ac1'; },
  datatype() { return 'dobot/SetCPParams'; }
};
