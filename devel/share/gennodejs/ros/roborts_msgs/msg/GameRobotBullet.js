// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GameRobotBullet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red1 = null;
      this.red2 = null;
      this.blue1 = null;
      this.blue2 = null;
    }
    else {
      if (initObj.hasOwnProperty('red1')) {
        this.red1 = initObj.red1
      }
      else {
        this.red1 = 0;
      }
      if (initObj.hasOwnProperty('red2')) {
        this.red2 = initObj.red2
      }
      else {
        this.red2 = 0;
      }
      if (initObj.hasOwnProperty('blue1')) {
        this.blue1 = initObj.blue1
      }
      else {
        this.blue1 = 0;
      }
      if (initObj.hasOwnProperty('blue2')) {
        this.blue2 = initObj.blue2
      }
      else {
        this.blue2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GameRobotBullet
    // Serialize message field [red1]
    bufferOffset = _serializer.uint16(obj.red1, buffer, bufferOffset);
    // Serialize message field [red2]
    bufferOffset = _serializer.uint16(obj.red2, buffer, bufferOffset);
    // Serialize message field [blue1]
    bufferOffset = _serializer.uint16(obj.blue1, buffer, bufferOffset);
    // Serialize message field [blue2]
    bufferOffset = _serializer.uint16(obj.blue2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameRobotBullet
    let len;
    let data = new GameRobotBullet(null);
    // Deserialize message field [red1]
    data.red1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red2]
    data.red2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue1]
    data.blue1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue2]
    data.blue2 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/GameRobotBullet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdaec03d4604469fd40ee7049d826d6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #game robot bullet
    uint16 red1
    uint16 red2
    uint16 blue1
    uint16 blue2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameRobotBullet(null);
    if (msg.red1 !== undefined) {
      resolved.red1 = msg.red1;
    }
    else {
      resolved.red1 = 0
    }

    if (msg.red2 !== undefined) {
      resolved.red2 = msg.red2;
    }
    else {
      resolved.red2 = 0
    }

    if (msg.blue1 !== undefined) {
      resolved.blue1 = msg.blue1;
    }
    else {
      resolved.blue1 = 0
    }

    if (msg.blue2 !== undefined) {
      resolved.blue2 = msg.blue2;
    }
    else {
      resolved.blue2 = 0
    }

    return resolved;
    }
};

module.exports = GameRobotBullet;
