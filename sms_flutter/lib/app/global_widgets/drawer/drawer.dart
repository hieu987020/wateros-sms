// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:sensor_management_service/app/modules/sms_owner/page/owner_page.dart';
import 'package:sensor_management_service/routes/pages.dart';

class WaterOSDrawer extends StatelessWidget {
  const WaterOSDrawer({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);
  final double? width;

  final double? height;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          Container(
            width: width, //295
            height: height,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 1, // soften the shadow
                  spreadRadius: 1, //extend the shadow
                  offset: Offset(
                    2, // Move to right 10  horizontally
                    1, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerItem(title: DrawerLabel.SMS_EDGED_EVICE, onTap: () {}),
                DrawerItem(
                  title: DrawerLabel.SMS_OWNER,
                  onTap: () {
                    Get.toNamed(Routes.SMS_OWNER);
                  },
                ),
                DrawerItem(title: DrawerLabel.SMS_ZONE, onTap: () {}),
                DrawerItem(
                    title: DrawerLabel.SMS_SENSOR_TYPE_NAME, onTap: () {}),
                DrawerItem(
                    title: DrawerLabel.SMS_SENSOR_RECEIVER, onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
