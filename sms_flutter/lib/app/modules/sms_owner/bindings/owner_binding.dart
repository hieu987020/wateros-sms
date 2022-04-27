import 'package:get/get.dart';
import 'package:sensor_management_service/app/modules/sms_owner/sms_owner.dart';

class SMSOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SMSOwnerController>(() => SMSOwnerController());
  }
}
