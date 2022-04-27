// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:sensor_management_service/app/modules/sms_edgedevice/sms_edgedevice.dart';
import 'package:sensor_management_service/app/modules/sms_owner/sms_owner.dart';

part 'routes.dart';

class AppPages {
  static const INITIAL = Routes.SMS_EDGE_DEVICE;

  static final routes = [
    GetPage(
      name: Routes.SMS_EDGE_DEVICE,
      page: () => SMSEdgeDevicePage(),
      binding: SMSEdgeDeviceBinding(),
    ),
    GetPage(
      name: Routes.SMS_OWNER,
      page: () => SMSOwnerPage(),
      binding: SMSOwnerBinding(),
    ),
  ];
}
