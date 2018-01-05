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

class SetEndEffectorLaserRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableCtrl = null;
      this.on = null;
      this.isQueued = null;
    }
    else {
      if (initObj.hasOwnProperty('enableCtrl')) {
        this.enableCtrl = initObj.enableCtrl
      }
      else {
        this.enableCtrl = 0;
      }
      if (initObj.hasOwnProperty('on')) {
        this.on = initObj.on
      }
      else {
        this.on = 0;
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
    // Serializes a message object of type SetEndEffectorLaserRequest
    // Serialize message field [enableCtrl]
    bufferOffset = _serializer.uint8(obj.enableCtrl, buffer, bufferOffset);
    // Serialize message field [on]
    bufferOffset = _serializer.uint8(obj.on, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorLaserRequest
    let len;
    let data = new SetEndEffectorLaserRequest(null);
    // Deserialize message field [enableCtrl]
    data.enableCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [on]
    data.on = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetEndEffectorLaserRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31a17e9637c3a452d332805afc81b7af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 enableCtrl
    uint8 on
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEndEffectorLaserRequest(null);
    if (msg.enableCtrl !== undefined) {
      resolved.enableCtrl = msg.enableCtrl;
    }
    else {
      resolved.enableCtrl = 0
    }

    if (msg.on !== undefined) {
      resolved.on = msg.on;
    }
    else {
      resolved.on = 0
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

class SetEndEffectorLaserResponse {
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
    // Serializes a message object of type SetEndEffectorLaserResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorLaserResponse
    let len;
    let data = new SetEndEffectorLaserResponse(null);
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
    return 'dobot/SetEndEffectorLaserResponse';
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
    const resolved = new SetEndEffectorLaserResponse(null);
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
  Request: SetEndEffectorLaserRequest,
  Response: SetEndEffectorLaserResponse,
  md5sum() { return '97ab3479a3c227d7c546855f18fa2912'; },
  datatype() { return 'dobot/SetEndEffectorLaser'; }
};
