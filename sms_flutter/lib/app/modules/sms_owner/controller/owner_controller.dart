import 'package:get/get.dart';
import 'package:sensor_management_service/app/data/services/services.dart';
import 'package:sensor_management_service/app/modules/sms_owner/sms_owner.dart';

class SMSOwnerController extends GetxController {
  var ownerDataSource = OwnerDataSource(ownerData: []).obs;
  var owners = [];
  final OwnerService ownerService = OwnerService();
  getOwnerData() async {
    var result = await ownerService.listOwner();
    ownerDataSource(OwnerDataSource(ownerData: result.rows!));
  }
}
