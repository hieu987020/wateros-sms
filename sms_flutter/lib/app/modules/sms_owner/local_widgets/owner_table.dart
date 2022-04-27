import 'package:flutter/material.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:sensor_management_service/app/data/models/models.dart';
import 'package:sensor_management_service/app/global_widgets/global_widgets.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class OwnerTable extends StatelessWidget {
  const OwnerTable({
    Key? key,
    required this.ownerDataSource,
  }) : super(key: key);

  final OwnerDataSource ownerDataSource;

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      OwnerLabel.OWNER_ID,
      OwnerLabel.OWNER_NAME,
      OwnerLabel.OWNER_INFO,
      OwnerLabel.STATE,
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
                child: WosDataGrid(dataGridSource: ownerDataSource, list: list),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// An object to set the owner collection data source to the datagrid. This
/// is used to map the owner data to the datagrid widget.
class OwnerDataSource extends DataGridSource {
  /// Creates the owner data source class with required details.
  OwnerDataSource({required List<Owner> ownerData}) {
    _ownerData = ownerData.map<DataGridRow>(
      (e) {
        return DataGridRow(
          cells: [
            DataGridCell<String>(
                columnName: OwnerLabel.OWNER_ID, value: e.ownerID),
            DataGridCell<String>(
                columnName: OwnerLabel.OWNER_NAME, value: e.ownerName),
            DataGridCell<String>(
                columnName: OwnerLabel.OWNER_INFO, value: e.ownerInfo),
            DataGridCell<String>(columnName: OwnerLabel.STATE, value: e.state),
          ],
        );
      },
    ).toList();
  }

  List<DataGridRow> _ownerData = [];
  @override
  List<DataGridRow> get rows => _ownerData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final int rowIndex = _ownerData.indexOf(row);
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
