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

class GetDeviceNameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceNameRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceNameRequest
    let len;
    let data = new GetDeviceNameRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetDeviceNameRequest';
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
    const resolved = new GetDeviceNameRequest(null);
    return resolved;
    }
};

class GetDeviceNameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.deviceName = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('deviceName')) {
        this.deviceName = initObj.deviceName
      }
      else {
        this.deviceName = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceNameResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [deviceName]
    bufferOffset = std_msgs.msg.String.serialize(obj.deviceName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceNameResponse
    let len;
    let data = new GetDeviceNameResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [deviceName]
    data.deviceName = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.deviceName);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetDeviceNameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a703c880c9a21252b3f02bc128299ae6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    std_msgs/String deviceName
    
    
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
    const resolved = new GetDeviceNameResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.deviceName !== undefined) {
      resolved.deviceName = std_msgs.msg.String.Resolve(msg.deviceName)
    }
    else {
      resolved.deviceName = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDeviceNameRequest,
  Response: GetDeviceNameResponse,
  md5sum() { return 'a703c880c9a21252b3f02bc128299ae6'; },
  datatype() { return 'dobot/GetDeviceName'; }
};
