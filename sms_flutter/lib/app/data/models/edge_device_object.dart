import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sensor_management_service/app/data/models/models.dart';

part 'edge_device_object.g.dart';

@RestApi(baseUrl: "http://localhost:3000/api/")
abstract class EdgeDeviceObjectRestClient {
  factory EdgeDeviceObjectRestClient(Dio dio, {String baseUrl}) =
      _EdgeDeviceObjectRestClient;

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
