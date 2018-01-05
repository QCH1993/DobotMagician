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

class SetEndEffectorSuctionCupRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableCtrl = null;
      this.suck = null;
      this.isQueued = null;
    }
    else {
      if (initObj.hasOwnProperty('enableCtrl')) {
        this.enableCtrl = initObj.enableCtrl
      }
      else {
        this.enableCtrl = 0;
      }
      if (initObj.hasOwnProperty('suck')) {
        this.suck = initObj.suck
      }
      else {
        this.suck = 0;
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
    // Serializes a message object of type SetEndEffectorSuctionCupRequest
    // Serialize message field [enableCtrl]
    bufferOffset = _serializer.uint8(obj.enableCtrl, buffer, bufferOffset);
    // Serialize message field [suck]
    bufferOffset = _serializer.uint8(obj.suck, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorSuctionCupRequest
    let len;
    let data = new SetEndEffectorSuctionCupRequest(null);
    // Deserialize message field [enableCtrl]
    data.enableCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [suck]
    data.suck = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetEndEffectorSuctionCupRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bec585ef6d120e708c2d53ffba205842';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 enableCtrl
    uint8 suck
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEndEffectorSuctionCupRequest(null);
    if (msg.enableCtrl !== undefined) {
      resolved.enableCtrl = msg.enableCtrl;
    }
    else {
      resolved.enableCtrl = 0
    }

    if (msg.suck !== undefined) {
      resolved.suck = msg.suck;
    }
    else {
      resolved.suck = 0
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

class SetEndEffectorSuctionCupResponse {
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
    // Serializes a message object of type SetEndEffectorSuctionCupResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorSuctionCupResponse
    let len;
    let data = new SetEndEffectorSuctionCupResponse(null);
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
    return 'dobot/SetEndEffectorSuctionCupResponse';
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
    const resolved = new SetEndEffectorSuctionCupResponse(null);
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
  Request: SetEndEffectorSuctionCupRequest,
  Response: SetEndEffectorSuctionCupResponse,
  md5sum() { return '27763da58719d6c55997a5f535fcffda'; },
  datatype() { return 'dobot/SetEndEffectorSuctionCup'; }
};
