import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
// import 'package:sensor_management_service/example.dart';
import 'package:sensor_management_service/product.dart';

final logger = Logger();
void main(List<String> args) async {
  // final dio = Dio(); // Provide a dio instance
  // dio.options.headers["Demo-Header"] =
  //     "demo header"; // config your dio headers globally
  // dio.options.headers["Access-Control-Allow-Origin"] =
  //     "*"; // config your dio headers globally
  // final client = RestClient(dio);
  // var reuslt = await client.getTasks();
  // print(reuslt.length.toString());

  final dio = Dio();
  // dio.options.headers['content-Type'] = 'text/plain; charset=UTF-8';
  // dio.options.headers['Access-Control-Allow-Origin'] = '*';
  // dio.options.headers['Access-Control-Allow-Methods'] =
  //     'POST, GET, OPTIONS, PUT, DELETE, HEAD';
  final client = RestClient(dio);

  var result = await client.getProducts();
  print(result.length.toString());
}
