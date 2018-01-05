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

class GetEndEffectorParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEndEffectorParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEndEffectorParamsRequest
    let len;
    let data = new GetEndEffectorParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetEndEffectorParamsRequest';
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
    const resolved = new GetEndEffectorParamsRequest(null);
    return resolved;
    }
};

class GetEndEffectorParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.xBias = null;
      this.yBias = null;
      this.zBias = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('xBias')) {
        this.xBias = initObj.xBias
      }
      else {
        this.xBias = 0.0;
      }
      if (initObj.hasOwnProperty('yBias')) {
        this.yBias = initObj.yBias
      }
      else {
        this.yBias = 0.0;
      }
      if (initObj.hasOwnProperty('zBias')) {
        this.zBias = initObj.zBias
      }
      else {
        this.zBias = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEndEffectorParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [xBias]
    bufferOffset = _serializer.float32(obj.xBias, buffer, bufferOffset);
    // Serialize message field [yBias]
    bufferOffset = _serializer.float32(obj.yBias, buffer, bufferOffset);
    // Serialize message field [zBias]
    bufferOffset = _serializer.float32(obj.zBias, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEndEffectorParamsResponse
    let len;
    let data = new GetEndEffectorParamsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [xBias]
    data.xBias = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yBias]
    data.yBias = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zBias]
    data.zBias = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetEndEffectorParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a07055f2964cf165e2fb447024254f9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 xBias
    float32 yBias
    float32 zBias
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEndEffectorParamsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.xBias !== undefined) {
      resolved.xBias = msg.xBias;
    }
    else {
      resolved.xBias = 0.0
    }

    if (msg.yBias !== undefined) {
      resolved.yBias = msg.yBias;
    }
    else {
      resolved.yBias = 0.0
    }

    if (msg.zBias !== undefined) {
      resolved.zBias = msg.zBias;
    }
    else {
      resolved.zBias = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetEndEffectorParamsRequest,
  Response: GetEndEffectorParamsResponse,
  md5sum() { return 'a07055f2964cf165e2fb447024254f9f'; },
  datatype() { return 'dobot/GetEndEffectorParams'; }
};
