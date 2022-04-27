import 'package:dio/dio.dart';
import 'package:sensor_management_service/app/data/models/models.dart';

class EdgeDeviceService {
  Future<EdgeDeviceObject> listEdgeDevice() async {
    final dio = Dio();
    final client = EdgeDeviceObjectRestClient(dio);

    return await client.getEdgeDeviceObjects();
  }
}
