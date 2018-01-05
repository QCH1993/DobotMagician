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

class GetCPParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCPParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCPParamsRequest
    let len;
    let data = new GetCPParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetCPParamsRequest';
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
    const resolved = new GetCPParamsRequest(null);
    return resolved;
    }
};

class GetCPParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.planAcc = null;
      this.junctionVel = null;
      this.acc = null;
      this.realTimeTrack = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCPParamsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [planAcc]
    bufferOffset = _serializer.float32(obj.planAcc, buffer, bufferOffset);
    // Serialize message field [junctionVel]
    bufferOffset = _serializer.float32(obj.junctionVel, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    // Serialize message field [realTimeTrack]
    bufferOffset = _serializer.uint8(obj.realTimeTrack, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCPParamsResponse
    let len;
    let data = new GetCPParamsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [planAcc]
    data.planAcc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [junctionVel]
    data.junctionVel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [realTimeTrack]
    data.realTimeTrack = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetCPParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85dff81a44afbb98d15e48705b4ea806';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 planAcc
    float32 junctionVel
    float32 acc
    uint8 realTimeTrack
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCPParamsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

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

    return resolved;
    }
};

module.exports = {
  Request: GetCPParamsRequest,
  Response: GetCPParamsResponse,
  md5sum() { return '85dff81a44afbb98d15e48705b4ea806'; },
  datatype() { return 'dobot/GetCPParams'; }
};
