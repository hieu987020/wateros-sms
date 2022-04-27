import 'package:get/get.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/local_widgets/edge_device_table.dart';

import '../../../data/services/services.dart';

class SMSEdgeDeviceController extends GetxController {
  var edgeDeviceDataSource = EdgeDeviceDataSource(edgeDeviceData: []).obs;
  var edgeDevices = [];
  final EdgeDeviceService edgeDeviceService = EdgeDeviceService();
  getEdgeDeviceData() async {
    var result = await edgeDeviceService.listEdgeDevice();
    edgeDeviceDataSource(EdgeDeviceDataSource(edgeDeviceData: result.rows!));
  }
}
