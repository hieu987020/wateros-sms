import 'package:json_annotation/json_annotation.dart';

part 'edgeDevice.g.dart';

@JsonSerializable()
class EdgeDevice {
  String? deviceID;
  String? deviceType;
  String? ownerID;
  String? zoneID;
  String? receiverID;
  String? state;
  String? lastUpdated;

  EdgeDevice(
      {this.deviceID,
      this.deviceType,
      this.ownerID,
      this.zoneID,
      this.receiverID,
      this.state,
      this.lastUpdated});

  factory EdgeDevice.fromJson(Map<String, dynamic> json) =>
      _$EdgeDeviceFromJson(json);
  Map<String, dynamic> toJson() => _$EdgeDeviceToJson(this);
}
