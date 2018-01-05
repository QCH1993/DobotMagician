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

class SetJOGCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isJoint = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('isJoint')) {
        this.isJoint = initObj.isJoint
      }
      else {
        this.isJoint = 0;
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJOGCmdRequest
    // Serialize message field [isJoint]
    bufferOffset = _serializer.uint8(obj.isJoint, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint8(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJOGCmdRequest
    let len;
    let data = new SetJOGCmdRequest(null);
    // Deserialize message field [isJoint]
    data.isJoint = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetJOGCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46c3804084d740fb4c4f84d255d0b495';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 isJoint
    uint8 cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJOGCmdRequest(null);
    if (msg.isJoint !== undefined) {
      resolved.isJoint = msg.isJoint;
    }
    else {
      resolved.isJoint = 0
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    return resolved;
    }
};

class SetJOGCmdResponse {
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
    // Serializes a message object of type SetJOGCmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJOGCmdResponse
    let len;
    let data = new SetJOGCmdResponse(null);
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
    return 'dobot/SetJOGCmdResponse';
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
    const resolved = new SetJOGCmdResponse(null);
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
  Request: SetJOGCmdRequest,
  Response: SetJOGCmdResponse,
  md5sum() { return '1b7c1bd2f60c0408e6705df335544340'; },
  datatype() { return 'dobot/SetJOGCmd'; }
};
