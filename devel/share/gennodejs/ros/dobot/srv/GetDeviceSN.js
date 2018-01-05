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

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GetDeviceSNRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceSNRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceSNRequest
    let len;
    let data = new GetDeviceSNRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetDeviceSNRequest';
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
    const resolved = new GetDeviceSNRequest(null);
    return resolved;
    }
};

class GetDeviceSNResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.deviceSN = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('deviceSN')) {
        this.deviceSN = initObj.deviceSN
      }
      else {
        this.deviceSN = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceSNResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [deviceSN]
    bufferOffset = std_msgs.msg.String.serialize(obj.deviceSN, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceSNResponse
    let len;
    let data = new GetDeviceSNResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [deviceSN]
    data.deviceSN = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.deviceSN);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetDeviceSNResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0f9486ebe760ac95403f1a902002a01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    std_msgs/String deviceSN
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDeviceSNResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.deviceSN !== undefined) {
      resolved.deviceSN = std_msgs.msg.String.Resolve(msg.deviceSN)
    }
    else {
      resolved.deviceSN = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDeviceSNRequest,
  Response: GetDeviceSNResponse,
  md5sum() { return 'e0f9486ebe760ac95403f1a902002a01'; },
  datatype() { return 'dobot/GetDeviceSN'; }
};
