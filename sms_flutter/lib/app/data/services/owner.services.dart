import 'package:dio/dio.dart';
import 'package:sensor_management_service/app/data/models/models.dart';

class OwnerService {
  Future<OwnerObject> listOwner() async {
    final dio = Dio();
    final client = OwnerObjectRestClient(dio);

    return await client.getOwnerObjects();
  }
}
