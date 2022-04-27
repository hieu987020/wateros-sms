// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sensor_management_service/app/global_widgets/global_widgets.dart';
import 'package:sensor_management_service/app/modules/sms_owner/sms_owner.dart';
import 'package:sensor_management_service/sensor_widget.dart';

// ignore: must_be_immutable
class SMSOwnerPage extends GetView<SMSOwnerController> {
  @override
  Widget build(BuildContext context) {
    controller.getOwnerData();

    // Appbar
    const appBar = WaterOSAppbar();

    // Drawer
    var drawer = Padding(
      padding: const EdgeInsets.only(right: 10),
      child: WaterOSDrawer(
        height: 1002,
        width: MediaQuery.of(context).size.width * 0.15,
      ),
    );

    // Edge Device Table
    var ownerTable = Obx(
      () => OwnerTable(ownerDataSource: controller.ownerDataSource.value),
    );

    // Sensor Widget
    const sensorWidget = Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SensorWidget(),
    );

    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      appBar: appBar,
      // drawer: drawer,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Drawer
                  drawer,

                  //Edge Device Table
                  ownerTable,

                  //Sensor Widget
                  sensorWidget,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
