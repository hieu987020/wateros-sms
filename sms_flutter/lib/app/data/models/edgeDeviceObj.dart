import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import 'edgeDevice.dart';

part 'edgeDeviceObj.g.dart';

@RestApi(baseUrl: "http://localhost:3000/api/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/edgeDevice")
  Future<EdgeDeviceObject> getEdgeDeviceObjects();
}

@JsonSerializable()
class EdgeDeviceObject {
  List<EdgeDevice>? rows;
  int? total;
  int? page;
  int? pageSize;
  int? totalPages;

  EdgeDeviceObject(
      {this.rows, this.total, this.page, this.pageSize, this.totalPages});

  factory EdgeDeviceObject.fromJson(Map<String, dynamic> json) =>
      _$EdgeDeviceObjectFromJson(json);
  Map<String, dynamic> toJson() => _$EdgeDeviceObjectToJson(this);
}
