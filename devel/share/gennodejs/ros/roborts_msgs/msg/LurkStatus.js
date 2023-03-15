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

class LurkStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lurk_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('lurk_mode')) {
        this.lurk_mode = initObj.lurk_mode
      }
      else {
        this.lurk_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LurkStatus
    // Serialize message field [lurk_mode]
    bufferOffset = _serializer.uint8(obj.lurk_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LurkStatus
    let len;
    let data = new LurkStatus(null);
    // Deserialize message field [lurk_mode]
    data.lurk_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/LurkStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c957f31afa8b58bcdc83bff4a2db4791';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #lurking status
    
    uint8 lurk_status_normal=0
    uint8 lurk_status_ready=1
    uint8 lurk_status_lurking=2
    
    uint8 lurk_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LurkStatus(null);
    if (msg.lurk_mode !== undefined) {
      resolved.lurk_mode = msg.lurk_mode;
    }
    else {
      resolved.lurk_mode = 0
    }

    return resolved;
    }
};

// Constants for message
LurkStatus.Constants = {
  LURK_STATUS_NORMAL: 0,
  LURK_STATUS_READY: 1,
  LURK_STATUS_LURKING: 2,
}

module.exports = LurkStatus;
