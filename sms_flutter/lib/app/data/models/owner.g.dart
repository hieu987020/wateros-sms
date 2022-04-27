// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      ownerID: json['ownerID'] as String?,
      ownerName: json['ownerName'] as String?,
      ownerInfo: json['ownerInfo'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'ownerID': instance.ownerID,
      'ownerName': instance.ownerName,
      'ownerInfo': instance.ownerInfo,
      'state': instance.state,
    };
