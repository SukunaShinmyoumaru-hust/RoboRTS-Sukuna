// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GameZone = require('./GameZone.js');

//-----------------------------------------------------------

class GameZoneArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone = null;
    }
    else {
      if (initObj.hasOwnProperty('zone')) {
        this.zone = initObj.zone
      }
      else {
        this.zone = new Array(6).fill(new GameZone());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GameZoneArray
    // Check that the constant length array field [zone] has the right length
    if (obj.zone.length !== 6) {
      throw new Error('Unable to serialize array field zone - length must be 6')
    }
    // Serialize message field [zone]
    obj.zone.forEach((val) => {
      bufferOffset = GameZone.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameZoneArray
    let len;
    let data = new GameZoneArray(null);
    // Deserialize message field [zone]
    len = 6;
    data.zone = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.zone[i] = GameZone.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/GameZoneArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed52b36c9b2980794ba629e953695da2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #game zone array
    GameZone[6] zone
    
    ================================================================================
    MSG: roborts_msgs/GameZone
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
    const resolved = new GameZoneArray(null);
    if (msg.zone !== undefined) {
      resolved.zone = new Array(6)
      for (let i = 0; i < resolved.zone.length; ++i) {
        if (msg.zone.length > i) {
          resolved.zone[i] = GameZone.Resolve(msg.zone[i]);
        }
        else {
          resolved.zone[i] = new GameZone();
        }
      }
    }
    else {
      resolved.zone = new Array(6).fill(new GameZone())
    }

    return resolved;
    }
};

module.exports = GameZoneArray;
