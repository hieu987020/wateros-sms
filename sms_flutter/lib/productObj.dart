import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'productObj.g.dart';

@RestApi(baseUrl: "http://localhost:3000/api/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/products")
  Future<ProductObject> getProductObjects();
}

@JsonSerializable()
class ProductObject {
  List<Product>? rows;
  int? total;
  int? page;
  int? pageSize;
  int? totalPages;

  ProductObject(
      {this.rows, this.total, this.page, this.pageSize, this.totalPages});

  factory ProductObject.fromJson(Map<String, dynamic> json) =>
      _$ProductObjectFromJson(json);
  Map<String, dynamic> toJson() => _$ProductObjectToJson(this);
}
