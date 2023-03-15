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

class GameZone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.active = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GameZone
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameZone
    let len;
    let data = new GameZone(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/GameZone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b28f2688671e9a9ba1cf15df35d7a80d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #game zone
    uint8 RED_HP_RECOVERY=1
    uint8 RED_BULLET_SUPPLY=2
    uint8 BLUE_HP_RECOVERY=3
    uint8 BLUE_BULLET_SUPPLY=4
    uint8 DISABLE_SHOOTING=5
    uint8 DISABLE_MOVEMENT=6
    
    uint8 type
    bool active
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameZone(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    return resolved;
    }
};

// Constants for message
GameZone.Constants = {
  RED_HP_RECOVERY: 1,
  RED_BULLET_SUPPLY: 2,
  BLUE_HP_RECOVERY: 3,
  BLUE_BULLET_SUPPLY: 4,
  DISABLE_SHOOTING: 5,
  DISABLE_MOVEMENT: 6,
}

module.exports = GameZone;
