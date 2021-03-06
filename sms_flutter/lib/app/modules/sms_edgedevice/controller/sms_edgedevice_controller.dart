import 'package:get/get.dart';
import 'package:sensor_management_service/app/data/services/services.dart';
import 'package:sensor_management_service/app/modules/sms_edgedevice/sms_edgedevice.dart';

class SMSEdgeDeviceController extends GetxController {
  var edgeDeviceDataSource = EdgeDeviceDataSource(edgeDeviceData: []).obs;
  var edgeDevices = [];
  final EdgeDeviceService edgeDeviceService = EdgeDeviceService();
  getEdgeDeviceData() async {
    var result = await edgeDeviceService.listEdgeDevice();
    edgeDeviceDataSource(EdgeDeviceDataSource(edgeDeviceData: result.rows!));
  }
}
