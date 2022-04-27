import 'package:get/get.dart';
import 'package:sensor_management_service/app/modules/sms_edgedevice/sms_edgedevice.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SMS_EDGE_DEVICE;

  static final routes = [
    GetPage(
      name: _Paths.SMSEdgeDevice,
      page: () => SMSEdgeDeviceView(),
      binding: SMSEdgeDeviceBinding(),
    ),
  ];
}
