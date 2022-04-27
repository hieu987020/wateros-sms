import 'package:get/get.dart';
import 'package:sensor_management_service/app/modules/sms_edgedevice/sms_edgedevice.dart';

class SMSEdgeDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SMSEdgeDeviceController>(() => SMSEdgeDeviceController());
  }
}
