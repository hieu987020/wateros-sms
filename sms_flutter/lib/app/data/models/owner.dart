import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner {
  String? ownerID;
  String? ownerName;
  String? ownerInfo;
  String? state;

  Owner({
    this.ownerID,
    this.ownerName,
    this.ownerInfo,
    this.state,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
