import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:sensor_management_service/productObj.dart';
// import 'package:sensor_management_service/example.dart';
// import 'package:sensor_management_service/product.dart';

final logger = Logger();
void main(List<String> args) async {
  final dio = Dio();
  final client = RestClient(dio);

  var result = await client.getProductObjects();
  print(result.rows!.length.toString());
}
