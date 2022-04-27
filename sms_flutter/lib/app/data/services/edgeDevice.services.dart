import 'package:dio/dio.dart';

import '../models/models.dart';

class EdgeDeviceService {
  Future<EdgeDeviceObject> listEdgeDevice() async {
    final dio = Dio();
    final client = RestClient(dio);

    return await client.getEdgeDeviceObjects();
  }
}
