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

class GetIOPWMRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.address = null;
    }
    else {
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIOPWMRequest
    // Serialize message field [address]
    bufferOffset = _serializer.uint8(obj.address, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIOPWMRequest
    let len;
    let data = new GetIOPWMRequest(null);
    // Deserialize message field [address]
    data.address = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetIOPWMRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '972132462544b1029bf37f19a88e11c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 address
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIOPWMRequest(null);
    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = 0
    }

    return resolved;
    }
};

class GetIOPWMResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.frequency = null;
      this.dutyCycle = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('dutyCycle')) {
        this.dutyCycle = initObj.dutyCycle
      }
      else {
        this.dutyCycle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIOPWMResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.float32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [dutyCycle]
    bufferOffset = _serializer.float32(obj.dutyCycle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIOPWMResponse
    let len;
    let data = new GetIOPWMResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dutyCycle]
    data.dutyCycle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetIOPWMResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17a6ba166d1125f7c7225e13ea02a8e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 frequency
    float32 dutyCycle
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIOPWMResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.dutyCycle !== undefined) {
      resolved.dutyCycle = msg.dutyCycle;
    }
    else {
      resolved.dutyCycle = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetIOPWMRequest,
  Response: GetIOPWMResponse,
  md5sum() { return 'e74ebc842c028d734a6d61feb93c5a53'; },
  datatype() { return 'dobot/GetIOPWM'; }
};
