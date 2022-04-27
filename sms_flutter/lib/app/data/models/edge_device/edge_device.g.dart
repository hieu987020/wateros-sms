// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EdgeDevice _$EdgeDeviceFromJson(Map<String, dynamic> json) => EdgeDevice(
      deviceID: json['deviceID'] as String?,
      deviceType: json['deviceType'] as String?,
      ownerID: json['ownerID'] as String?,
      zoneID: json['zoneID'] as String?,
      receiverID: json['receiverID'] as String?,
      state: json['state'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
    );

Map<String, dynamic> _$EdgeDeviceToJson(EdgeDevice instance) =>
    <String, dynamic>{
      'deviceID': instance.deviceID,
      'deviceType': instance.deviceType,
      'ownerID': instance.ownerID,
      'zoneID': instance.zoneID,
      'receiverID': instance.receiverID,
      'state': instance.state,
      'lastUpdated': instance.lastUpdated,
    };
