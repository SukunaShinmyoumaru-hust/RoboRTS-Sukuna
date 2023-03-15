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

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.level = null;
      this.remain_hp = null;
      this.max_hp = null;
      this.heat_cooling_rate = null;
      this.heat_cooling_limit = null;
      this.heat_speed_limit = null;
      this.gimbal_enable = null;
      this.chassis_enable = null;
      this.shooter_enable = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('remain_hp')) {
        this.remain_hp = initObj.remain_hp
      }
      else {
        this.remain_hp = 0;
      }
      if (initObj.hasOwnProperty('max_hp')) {
        this.max_hp = initObj.max_hp
      }
      else {
        this.max_hp = 0;
      }
      if (initObj.hasOwnProperty('heat_cooling_rate')) {
        this.heat_cooling_rate = initObj.heat_cooling_rate
      }
      else {
        this.heat_cooling_rate = 0;
      }
      if (initObj.hasOwnProperty('heat_cooling_limit')) {
        this.heat_cooling_limit = initObj.heat_cooling_limit
      }
      else {
        this.heat_cooling_limit = 0;
      }
      if (initObj.hasOwnProperty('heat_speed_limit')) {
        this.heat_speed_limit = initObj.heat_speed_limit
      }
      else {
        this.heat_speed_limit = 0;
      }
      if (initObj.hasOwnProperty('gimbal_enable')) {
        this.gimbal_enable = initObj.gimbal_enable
      }
      else {
        this.gimbal_enable = false;
      }
      if (initObj.hasOwnProperty('chassis_enable')) {
        this.chassis_enable = initObj.chassis_enable
      }
      else {
        this.chassis_enable = false;
      }
      if (initObj.hasOwnProperty('shooter_enable')) {
        this.shooter_enable = initObj.shooter_enable
      }
      else {
        this.shooter_enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.uint8(obj.level, buffer, bufferOffset);
    // Serialize message field [remain_hp]
    bufferOffset = _serializer.uint16(obj.remain_hp, buffer, bufferOffset);
    // Serialize message field [max_hp]
    bufferOffset = _serializer.uint16(obj.max_hp, buffer, bufferOffset);
    // Serialize message field [heat_cooling_rate]
    bufferOffset = _serializer.uint16(obj.heat_cooling_rate, buffer, bufferOffset);
    // Serialize message field [heat_cooling_limit]
    bufferOffset = _serializer.uint16(obj.heat_cooling_limit, buffer, bufferOffset);
    // Serialize message field [heat_speed_limit]
    bufferOffset = _serializer.uint16(obj.heat_speed_limit, buffer, bufferOffset);
    // Serialize message field [gimbal_enable]
    bufferOffset = _serializer.bool(obj.gimbal_enable, buffer, bufferOffset);
    // Serialize message field [chassis_enable]
    bufferOffset = _serializer.bool(obj.chassis_enable, buffer, bufferOffset);
    // Serialize message field [shooter_enable]
    bufferOffset = _serializer.bool(obj.shooter_enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [remain_hp]
    data.remain_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_hp]
    data.max_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [heat_cooling_rate]
    data.heat_cooling_rate = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [heat_cooling_limit]
    data.heat_cooling_limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [heat_speed_limit]
    data.heat_speed_limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gimbal_enable]
    data.gimbal_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [chassis_enable]
    data.chassis_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [shooter_enable]
    data.shooter_enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4295b144c261ec35e3a477c577c8639';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #robot status
    uint8 id
    uint8 level
    uint16 remain_hp
    uint16 max_hp
    
    uint16 heat_cooling_rate
    uint16 heat_cooling_limit
    uint16 heat_speed_limit
    
    bool gimbal_enable
    bool chassis_enable
    bool shooter_enable
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    if (msg.remain_hp !== undefined) {
      resolved.remain_hp = msg.remain_hp;
    }
    else {
      resolved.remain_hp = 0
    }

    if (msg.max_hp !== undefined) {
      resolved.max_hp = msg.max_hp;
    }
    else {
      resolved.max_hp = 0
    }

    if (msg.heat_cooling_rate !== undefined) {
      resolved.heat_cooling_rate = msg.heat_cooling_rate;
    }
    else {
      resolved.heat_cooling_rate = 0
    }

    if (msg.heat_cooling_limit !== undefined) {
      resolved.heat_cooling_limit = msg.heat_cooling_limit;
    }
    else {
      resolved.heat_cooling_limit = 0
    }

    if (msg.heat_speed_limit !== undefined) {
      resolved.heat_speed_limit = msg.heat_speed_limit;
    }
    else {
      resolved.heat_speed_limit = 0
    }

    if (msg.gimbal_enable !== undefined) {
      resolved.gimbal_enable = msg.gimbal_enable;
    }
    else {
      resolved.gimbal_enable = false
    }

    if (msg.chassis_enable !== undefined) {
      resolved.chassis_enable = msg.chassis_enable;
    }
    else {
      resolved.chassis_enable = false
    }

    if (msg.shooter_enable !== undefined) {
      resolved.shooter_enable = msg.shooter_enable;
    }
    else {
      resolved.shooter_enable = false
    }

    return resolved;
    }
};

module.exports = RobotStatus;
