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

class GetDeviceVersionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceVersionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceVersionRequest
    let len;
    let data = new GetDeviceVersionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetDeviceVersionRequest';
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
    const resolved = new GetDeviceVersionRequest(null);
    return resolved;
    }
};

class GetDeviceVersionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.majorVersion = null;
      this.minorVersion = null;
      this.revision = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('majorVersion')) {
        this.majorVersion = initObj.majorVersion
      }
      else {
        this.majorVersion = 0;
      }
      if (initObj.hasOwnProperty('minorVersion')) {
        this.minorVersion = initObj.minorVersion
      }
      else {
        this.minorVersion = 0;
      }
      if (initObj.hasOwnProperty('revision')) {
        this.revision = initObj.revision
      }
      else {
        this.revision = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceVersionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [majorVersion]
    bufferOffset = _serializer.uint8(obj.majorVersion, buffer, bufferOffset);
    // Serialize message field [minorVersion]
    bufferOffset = _serializer.uint8(obj.minorVersion, buffer, bufferOffset);
    // Serialize message field [revision]
    bufferOffset = _serializer.uint8(obj.revision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceVersionResponse
    let len;
    let data = new GetDeviceVersionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [majorVersion]
    data.majorVersion = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minorVersion]
    data.minorVersion = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [revision]
    data.revision = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetDeviceVersionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3c3f825efd26e7d40dd5c75956d6244';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    uint8 majorVersion
    uint8 minorVersion
    uint8 revision
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDeviceVersionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.majorVersion !== undefined) {
      resolved.majorVersion = msg.majorVersion;
    }
    else {
      resolved.majorVersion = 0
    }

    if (msg.minorVersion !== undefined) {
      resolved.minorVersion = msg.minorVersion;
    }
    else {
      resolved.minorVersion = 0
    }

    if (msg.revision !== undefined) {
      resolved.revision = msg.revision;
    }
    else {
      resolved.revision = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDeviceVersionRequest,
  Response: GetDeviceVersionResponse,
  md5sum() { return 'c3c3f825efd26e7d40dd5c75956d6244'; },
  datatype() { return 'dobot/GetDeviceVersion'; }
};
