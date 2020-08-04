// Auto-generated. Do not edit!

// (in-package initials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Quaternion_Angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.X_quaternion = null;
      this.Y_quaternion = null;
      this.Z_quaternion = null;
      this.W_quaternion = null;
    }
    else {
      if (initObj.hasOwnProperty('X_quaternion')) {
        this.X_quaternion = initObj.X_quaternion
      }
      else {
        this.X_quaternion = 0;
      }
      if (initObj.hasOwnProperty('Y_quaternion')) {
        this.Y_quaternion = initObj.Y_quaternion
      }
      else {
        this.Y_quaternion = 0;
      }
      if (initObj.hasOwnProperty('Z_quaternion')) {
        this.Z_quaternion = initObj.Z_quaternion
      }
      else {
        this.Z_quaternion = 0;
      }
      if (initObj.hasOwnProperty('W_quaternion')) {
        this.W_quaternion = initObj.W_quaternion
      }
      else {
        this.W_quaternion = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Quaternion_Angles
    // Serialize message field [X_quaternion]
    bufferOffset = _serializer.int64(obj.X_quaternion, buffer, bufferOffset);
    // Serialize message field [Y_quaternion]
    bufferOffset = _serializer.int64(obj.Y_quaternion, buffer, bufferOffset);
    // Serialize message field [Z_quaternion]
    bufferOffset = _serializer.int64(obj.Z_quaternion, buffer, bufferOffset);
    // Serialize message field [W_quaternion]
    bufferOffset = _serializer.int64(obj.W_quaternion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Quaternion_Angles
    let len;
    let data = new Quaternion_Angles(null);
    // Deserialize message field [X_quaternion]
    data.X_quaternion = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [Y_quaternion]
    data.Y_quaternion = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [Z_quaternion]
    data.Z_quaternion = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [W_quaternion]
    data.W_quaternion = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'initials/Quaternion_Angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '292272218170789099d95a650288f820';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 X_quaternion
    int64 Y_quaternion
    int64 Z_quaternion
    int64 W_quaternion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Quaternion_Angles(null);
    if (msg.X_quaternion !== undefined) {
      resolved.X_quaternion = msg.X_quaternion;
    }
    else {
      resolved.X_quaternion = 0
    }

    if (msg.Y_quaternion !== undefined) {
      resolved.Y_quaternion = msg.Y_quaternion;
    }
    else {
      resolved.Y_quaternion = 0
    }

    if (msg.Z_quaternion !== undefined) {
      resolved.Z_quaternion = msg.Z_quaternion;
    }
    else {
      resolved.Z_quaternion = 0
    }

    if (msg.W_quaternion !== undefined) {
      resolved.W_quaternion = msg.W_quaternion;
    }
    else {
      resolved.W_quaternion = 0
    }

    return resolved;
    }
};

module.exports = Quaternion_Angles;
