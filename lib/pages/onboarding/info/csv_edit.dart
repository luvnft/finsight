import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:finsight/pages/home/rankings/rankings.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:finsight/services/csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CSVEditPage extends HookConsumerWidget {
  static const name = 'CSVEditPage';
  final PlatformFile file;
  const CSVEditPage({super.key, required this.file});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;

    final infoNotifier = ref.watch(infoProvider.notifier);

    final horizontalController = useScrollController();

    final csvList = useMemoized(
      () {
        return CSVService.instance.convertToList(utf8.decode(file.bytes!));
      },
      [file],
    );

    final selectedColumns = useState<List>(csvList.first);

    final csvLimitedList = useMemoized(
      () {
        return csvList.length > 10 ? csvList.sublist(0, 10) : csvList;
      },
      [csvList],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(file.name),
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverList.list(
                  children: [
                    Text(
                      "Select the columns you want to import",
                      style: textTheme.titleSmall,
                    ),
                    Text(
                      "You should deselect unnecessary and sensitive columns. Try to keep the dataset anonymous. Usually we need only the date, name, amount, and category columns.",
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SliverGap(8),
              SliverList.builder(
                itemCount: csvList.first.length,
                itemBuilder: (context, index) {
                  final header = csvList.first[index];

                  return CheckboxListTile(
                    value: selectedColumns.value.contains(header),
                    onChanged: (value) {
                      if (selectedColumns.value.length == 1 && value == false) {
                        return;
                      }
                      if (value == true) {
                        selectedColumns.value = [
                          ...selectedColumns.value,
                          header
                        ];
                      } else {
                        selectedColumns.value = selectedColumns.value
                            .where((element) => element != header)
                            .toList();
                      }
                    },
                    title: Text(header.toString()),
                    controlAffinity: ListTileControlAffinity.leading,
                    dense: true,
                  );
                },
              ),
              const SliverGap(10),
              SliverToBoxAdapter(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Preview (showing first 10 rows)",
                          style: textTheme.titleMedium,
                        ),
                        Center(
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
                                    if (selectedColumns.value.contains(cell))
                                      DataColumn(
                                        label: Text(cell.toString()),
                                      ),
                                ],
                                rows: [
                                  for (final row in csvLimitedList.skip(1))
                                    DataRow(
                                      cells: [
                                        for (final MapEntry(
                                              key: index,
                                              value: cell
                                            ) in row.asMap().entries)
                                          if (selectedColumns.value
                                                  .elementAtOrNull(index) !=
                                              null)
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
                      ],
                    ),
                  ),
                ),
              ),
              const SliverGap(8),
              SliverToBoxAdapter(
                child: Center(
                  child: FilledButton.tonal(
                    child: const Text("Import"),
                    onPressed: () {
                      final csvNewList = [
                        selectedColumns.value,
                        for (final row in csvList.skip(1))
                          [
                            for (final MapEntry(key: index, value: cell)
                                in row.asMap().entries)
                              if (selectedColumns.value
                                      .elementAtOrNull(index) !=
                                  null)
                                cell
                          ]
                      ];

                      final csvStr =
                          CSVService.instance.convertToCSV(csvNewList);

                      infoNotifier.setState(
                        (state) => state.copyWith(statementCsv: csvStr),
                      );

                      context.goNamed(RankingsPage.name);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
