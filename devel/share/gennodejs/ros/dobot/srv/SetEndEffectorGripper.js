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

class SetEndEffectorGripperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableCtrl = null;
      this.grip = null;
      this.isQueued = null;
    }
    else {
      if (initObj.hasOwnProperty('enableCtrl')) {
        this.enableCtrl = initObj.enableCtrl
      }
      else {
        this.enableCtrl = 0;
      }
      if (initObj.hasOwnProperty('grip')) {
        this.grip = initObj.grip
      }
      else {
        this.grip = 0;
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
    // Serializes a message object of type SetEndEffectorGripperRequest
    // Serialize message field [enableCtrl]
    bufferOffset = _serializer.uint8(obj.enableCtrl, buffer, bufferOffset);
    // Serialize message field [grip]
    bufferOffset = _serializer.uint8(obj.grip, buffer, bufferOffset);
    // Serialize message field [isQueued]
    bufferOffset = _serializer.bool(obj.isQueued, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorGripperRequest
    let len;
    let data = new SetEndEffectorGripperRequest(null);
    // Deserialize message field [enableCtrl]
    data.enableCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [grip]
    data.grip = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isQueued]
    data.isQueued = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetEndEffectorGripperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6ca07854565dceb3e99c8dd8a2201e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 enableCtrl
    uint8 grip
    bool isQueued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEndEffectorGripperRequest(null);
    if (msg.enableCtrl !== undefined) {
      resolved.enableCtrl = msg.enableCtrl;
    }
    else {
      resolved.enableCtrl = 0
    }

    if (msg.grip !== undefined) {
      resolved.grip = msg.grip;
    }
    else {
      resolved.grip = 0
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

class SetEndEffectorGripperResponse {
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
    // Serializes a message object of type SetEndEffectorGripperResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [queuedCmdIndex]
    bufferOffset = _serializer.uint64(obj.queuedCmdIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEndEffectorGripperResponse
    let len;
    let data = new SetEndEffectorGripperResponse(null);
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
    return 'dobot/SetEndEffectorGripperResponse';
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
    const resolved = new SetEndEffectorGripperResponse(null);
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
  Request: SetEndEffectorGripperRequest,
  Response: SetEndEffectorGripperResponse,
  md5sum() { return '1d911d0abb06ff63cb1e204d00f0ce77'; },
  datatype() { return 'dobot/SetEndEffectorGripper'; }
};
