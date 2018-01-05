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

class GetPTPCommonParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPTPCommonParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPTPCommonParamsRequest
    let len;
    let data = new GetPTPCommonParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetPTPCommonParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPTPCommonParamsRequest(null);
    return resolved;
    }
};

class GetPTPCommonParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.velocityRatio = null;
      this.accelerationRatio = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPTPCommonParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [velocityRatio]
    bufferOffset = _serializer.float32(obj.velocityRatio, buffer, bufferOffset);
    // Serialize message field [accelerationRatio]
    bufferOffset = _serializer.float32(obj.accelerationRatio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPTPCommonParamsResponse
    let len;
    let data = new GetPTPCommonParamsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velocityRatio]
    data.velocityRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerationRatio]
    data.accelerationRatio = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetPTPCommonParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ccb42558fae0625dedee5118e81add9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 velocityRatio
    float32 accelerationRatio
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPTPCommonParamsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

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

    return resolved;
    }
};

module.exports = {
  Request: GetPTPCommonParamsRequest,
  Response: GetPTPCommonParamsResponse,
  md5sum() { return 'ccb42558fae0625dedee5118e81add9a'; },
  datatype() { return 'dobot/GetPTPCommonParams'; }
};
