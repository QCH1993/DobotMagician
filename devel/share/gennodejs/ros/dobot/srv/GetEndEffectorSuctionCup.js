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

class GetEndEffectorSuctionCupRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEndEffectorSuctionCupRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEndEffectorSuctionCupRequest
    let len;
    let data = new GetEndEffectorSuctionCupRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetEndEffectorSuctionCupRequest';
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
    const resolved = new GetEndEffectorSuctionCupRequest(null);
    return resolved;
    }
};

class GetEndEffectorSuctionCupResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.enableCtrl = null;
      this.suck = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEndEffectorSuctionCupResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [enableCtrl]
    bufferOffset = _serializer.uint8(obj.enableCtrl, buffer, bufferOffset);
    // Serialize message field [suck]
    bufferOffset = _serializer.uint8(obj.suck, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEndEffectorSuctionCupResponse
    let len;
    let data = new GetEndEffectorSuctionCupResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enableCtrl]
    data.enableCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [suck]
    data.suck = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetEndEffectorSuctionCupResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4855d73076b6df7c6c4785878f4cef46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    uint8 enableCtrl
    uint8 suck
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEndEffectorSuctionCupResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

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

    return resolved;
    }
};

module.exports = {
  Request: GetEndEffectorSuctionCupRequest,
  Response: GetEndEffectorSuctionCupResponse,
  md5sum() { return '4855d73076b6df7c6c4785878f4cef46'; },
  datatype() { return 'dobot/GetEndEffectorSuctionCup'; }
};
