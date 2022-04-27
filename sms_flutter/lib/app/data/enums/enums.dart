// ignore_for_file: constant_identifier_names

// enum EdgeDeviceLabel {
//   deviceID,
//   deviceType,
//   ownerID,
//   zoneID,
//   receiverID,
//   state,
//   lastUpdated,
//   action,
// }

abstract class DrawerLabel {
  static const SMS_EDGED_EVICE = 'Edge Device';
  static const SMS_OWNER = 'Owner';
  static const SMS_ZONE = 'Zone';
  static const SMS_SENSOR_TYPE_NAME = 'Sensor Type Name';
  static const SMS_SENSOR_RECEIVER = 'Sensor Receiver';
}

abstract class Path {
  static const SMS_EDGED_EVICE = '/sms_edge_device';
  static const SMS_OWNER = '/owner';
  static const SMS_ZONE = '/zone';
  static const SMS_SENSOR_TYPE_NAME = '/sensor_type_name';
  static const SMS_SENSOR_RECEIVER = '/sensor_receiver';
}

abstract class EdgeDeviceLabel {
  static const DEVICE_ID = "Device ID";
  static const DEVICE_TYPE = "Device Type";
  static const OWNER_ID = "Owner ID";
  static const ZONE_ID = "Zone ID";
  static const RECEIVER_ID = "Receiver ID";
  static const STATE = "State";
  static const LAST_UPDATED = "Last Updated";
  static const ACTION = "Action";
}

abstract class OwnerLabel {
  static const OWNER_ID = "Owner ID";
  static const OWNER_NAME = "Owner Name";
  static const OWNER_INFO = "Owner Info";
  static const STATE = "State";
  static const ACTION = "Action";
}

abstract class ConstColumn {
  static const DEVICE_ID = "Device ID";
  static const DEVICE_TYPE = "Device Type";
  static const OWNER_ID = "Owner ID";
  static const ZONE_ID = "Zone ID";
  static const RECEIVER_ID = "Receiver ID";
  static const STATE = "State";
  static const LAST_UPDATED = "Last Updated";
  static const ACTION = "Action";
}
