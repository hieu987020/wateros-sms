import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@RestApi(baseUrl: "http://localhost:3000/api/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/products")
  Future<List<Product>> getProducts();
}

@JsonSerializable()
class Product {
  String? name;
  int? quantity;
  int? price;

  Product({this.name, this.quantity, this.price});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
