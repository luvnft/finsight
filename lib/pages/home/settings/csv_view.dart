import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CSVViewPage extends HookWidget {
  static const name = "CSVViewPage";

  final List<List<dynamic>> csvLimitedList;
  const CSVViewPage({
    super.key,
    required this.csvLimitedList,
  });

  @override
  Widget build(BuildContext context) {
    final horizontalController = useScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Statement"),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Scrollbar(
          interactive: true,
          controller: horizontalController,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: horizontalController,
            child: DataTable(
              columnSpacing: 20,
              columns: [
                for (final cell in csvLimitedList.first)
                  DataColumn(
                    label: Text(cell.toString()),
                  ),
              ],
              rows: [
                for (final row in csvLimitedList.skip(1))
                  DataRow(
                    cells: [
                      for (final MapEntry(value: cell) in row.asMap().entries)
                        DataCell(
                          Text(cell.toString()),
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
