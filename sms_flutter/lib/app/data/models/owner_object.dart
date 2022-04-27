import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sensor_management_service/app/data/models/models.dart';

part 'owner_object.g.dart';

@RestApi(baseUrl: "http://localhost:3000/api/")
abstract class OwnerObjectRestClient {
  factory OwnerObjectRestClient(Dio dio, {String baseUrl}) =
      _OwnerObjectRestClient;

  @GET("/owner")
  Future<OwnerObject> getOwnerObjects();
}

@JsonSerializable()
class OwnerObject {
  List<Owner>? rows;
  int? total;
  int? page;
  int? pageSize;
  int? totalPages;

  OwnerObject(
      {this.rows, this.total, this.page, this.pageSize, this.totalPages});

  factory OwnerObject.fromJson(Map<String, dynamic> json) =>
      _$OwnerObjectFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerObjectToJson(this);
}
