import 'package:flutter/material.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:sensor_management_service/app/data/models/models.dart';
import 'package:sensor_management_service/app/global_widgets/global_widgets.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class EdgeDeviceTable extends StatelessWidget {
  const EdgeDeviceTable({
    Key? key,
    required this.edgeDeviceDataSource,
  }) : super(key: key);

  final EdgeDeviceDataSource edgeDeviceDataSource;

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      ConstLabel.DEVICE_ID,
      ConstLabel.DEVICE_TYPE,
      ConstLabel.OWNER_ID,
      ConstLabel.ZONE_ID,
      ConstLabel.RECEIVER_ID,
      ConstLabel.STATE,
      ConstLabel.LAST_UPDATED,
    ];

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(2, 1),
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SizedBox(
                      height: 76,
                      child: Center(child: Text("EDGE DEVICE TABLES "))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                      height: 36,
                      width: 96,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("New"))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 700,
                child: WosDataGrid(
                    dataGridSource: edgeDeviceDataSource, list: list),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// An object to set the edgeDevice collection data source to the datagrid. This
/// is used to map the edgeDevice data to the datagrid widget.
class EdgeDeviceDataSource extends DataGridSource {
  /// Creates the edgeDevice data source class with required details.
  EdgeDeviceDataSource({required List<EdgeDevice> edgeDeviceData}) {
    _edgeDeviceData = edgeDeviceData.map<DataGridRow>(
      (e) {
        return DataGridRow(
          cells: [
            DataGridCell<String>(
                columnName: ConstLabel.DEVICE_ID, value: e.deviceID),
            DataGridCell<String>(
                columnName: ConstLabel.DEVICE_TYPE, value: e.deviceType),
            DataGridCell<String>(
                columnName: ConstLabel.OWNER_ID, value: e.ownerID),
            DataGridCell<String>(
                columnName: ConstLabel.ZONE_ID, value: e.zoneID),
            DataGridCell<String>(
                columnName: ConstLabel.RECEIVER_ID, value: e.receiverID),
            DataGridCell<String>(columnName: ConstLabel.STATE, value: e.state),
            DataGridCell<String>(
                columnName: ConstLabel.LAST_UPDATED, value: e.lastUpdated),
          ],
        );
      },
    ).toList();
  }

  List<DataGridRow> _edgeDeviceData = [];
  @override
  List<DataGridRow> get rows => _edgeDeviceData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final int rowIndex = _edgeDeviceData.indexOf(row);
    Color backgroundColor = const Color(0xffF9F9F9); //404040
    if ((rowIndex % 2) == 0) {
      backgroundColor = Colors.white;
    }
    return DataGridRowAdapter(
        color: backgroundColor,
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }
}
