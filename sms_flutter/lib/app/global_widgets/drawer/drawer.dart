import 'dart:async';

import 'package:flutter/material.dart';

const EDGE_DEVICE = "Edge Device";
const OWNER = "Owner";
const ZONE = "Zone";
const SENSOR_TYPE_NAME = "Sensor Type Name";
const SENSOR_RECEIVER = "Sensor Receiver";

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
                DrawerItem(title: EDGE_DEVICE, onTap: () {}),
                DrawerItem(title: OWNER, onTap: () {}),
                DrawerItem(title: ZONE, onTap: () {}),
                DrawerItem(title: SENSOR_TYPE_NAME, onTap: () {}),
                DrawerItem(title: SENSOR_RECEIVER, onTap: () {}),
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
