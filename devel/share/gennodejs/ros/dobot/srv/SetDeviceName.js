// Auto-generated. Do not edit!

// (in-package dobot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetDeviceNameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.deviceName = null;
    }
    else {
      if (initObj.hasOwnProperty('deviceName')) {
        this.deviceName = initObj.deviceName
      }
      else {
        this.deviceName = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDeviceNameRequest
    // Serialize message field [deviceName]
    bufferOffset = std_msgs.msg.String.serialize(obj.deviceName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDeviceNameRequest
    let len;
    let data = new SetDeviceNameRequest(null);
    // Deserialize message field [deviceName]
    data.deviceName = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.deviceName);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetDeviceNameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cfd0d17902de8430ea45b9b5c531010';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SetDeviceNameRequest(null);
    if (msg.deviceName !== undefined) {
      resolved.deviceName = std_msgs.msg.String.Resolve(msg.deviceName)
    }
    else {
      resolved.deviceName = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class SetDeviceNameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDeviceNameResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDeviceNameResponse
    let len;
    let data = new SetDeviceNameResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetDeviceNameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDeviceNameResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetDeviceNameRequest,
  Response: SetDeviceNameResponse,
  md5sum() { return '1488f44288f7bbb72574bf0b686da4d4'; },
  datatype() { return 'dobot/SetDeviceName'; }
};
