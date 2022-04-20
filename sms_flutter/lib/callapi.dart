import 'dart:developer';

import 'package:sensor_management_service/product.dart';
import 'package:dio/dio.dart';

callapi() {
  final dio = Dio(); // Provide a dio instance
  dio.options.headers["Access-Control-Allow-Origin"] =
      "*"; // config your dio headers globally
  final client = RestClient(dio);

  client.getProducts().then((it) => log(it.first.toString()));
}
