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

class GetAlarmsStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAlarmsStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAlarmsStateRequest
    let len;
    let data = new GetAlarmsStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetAlarmsStateRequest';
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
    const resolved = new GetAlarmsStateRequest(null);
    return resolved;
    }
};

class GetAlarmsStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.alarmsState = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('alarmsState')) {
        this.alarmsState = initObj.alarmsState
      }
      else {
        this.alarmsState = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAlarmsStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [alarmsState]
    bufferOffset = _arraySerializer.uint8(obj.alarmsState, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAlarmsStateResponse
    let len;
    let data = new GetAlarmsStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alarmsState]
    data.alarmsState = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.alarmsState.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetAlarmsStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '471cc92db011a752d21793dfa031a894';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    uint8[] alarmsState
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAlarmsStateResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.alarmsState !== undefined) {
      resolved.alarmsState = msg.alarmsState;
    }
    else {
      resolved.alarmsState = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAlarmsStateRequest,
  Response: GetAlarmsStateResponse,
  md5sum() { return '471cc92db011a752d21793dfa031a894'; },
  datatype() { return 'dobot/GetAlarmsState'; }
};
