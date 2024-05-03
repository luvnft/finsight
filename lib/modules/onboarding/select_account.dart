import 'package:file_picker/file_picker.dart';
import 'package:finsight/pages/onboarding/info/csv_edit.dart';
import 'package:finsight/pages/onboarding/onboarding.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPageSelectBankAccountSection extends HookConsumerWidget {
  final VoidCallback onNext;
  const InfoPageSelectBankAccountSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme, :colorScheme) = Theme.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    final info = ref.watch(infoProvider);
    final infoNotifier = ref.read(infoProvider.notifier);

    final accountController = useTextEditingController(text: info.accountName);
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);

    final focusNode = useFocusNode();

    return Column(
      children: [
        const Text(
          "Select account",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        Form(
          key: formKey,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 200),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: accountController,
                  decoration: const InputDecoration(
                    labelText: "Account name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Enter account name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter account name";
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) {
                    if (formKey.currentState!.validate()) {
                      focusNode.requestFocus();
                    }
                  },
                ),
                Text(
                  "Select an existing account",
                  style: textTheme.bodySmall,
                ),
                const Gap(20),
                FilledButton(
                  focusNode: focusNode,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      infoNotifier.setState(
                        (state) => state.copyWith(
                          accountName: accountController.text,
                        ),
                      );
                    }

                    final fileResult = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['csv'],
                      allowMultiple: false,
                      dialogTitle: 'Select a .csv file',
                      withData: true,
                    );

                    if (fileResult == null) {
                      return;
                    }

                    final file = fileResult.files.first;
                    // deny anything more than 1MB
                    if (file.size > 1000000) {
                      scaffoldMessenger.showSnackBar(
                        const SnackBar(
                          content: Text("File size must be less than 1MB"),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                      return;
                    }

                    if (file.bytes == null || !context.mounted) return;

                    context.pushNamed(CSVEditPage.name, extra: file);
                  },
                  child: const Text("Upload Statement"),
                ),
                const Gap(20),
                Text(
                  "Visit your financial institution website to download bank or"
                  " credit card statement transactions in .csv format",
                  style: textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        const Gap(10),
        DataTable(
          dataTextStyle:
              textTheme.bodySmall!.copyWith(color: colorScheme.onSurface),
          headingRowHeight: 35,
          headingRowColor: MaterialStatePropertyAll(colorScheme.surfaceVariant),
          headingTextStyle: textTheme.bodyMedium,
          showBottomBorder: false,
          border: TableBorder.all(
            borderRadius: BorderRadius.circular(5),
            width: .1,
          ),
          columnSpacing: 10,
          dataRowMaxHeight: 48,
          columns: const [
            DataColumn(label: Text("Date")),
            DataColumn(label: Text("Description")),
            DataColumn(label: Text("Amount")),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text("12/24/2024")),
                DataCell(Text("Amazon")),
                DataCell(Text("42")),
              ],
            ),
          ],
        ),
        const Gap(20),
        Text(
          "Sample statement containing date of transaction formatted in"
          " mm/dd/yy, description and amount",
          style: textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const Gap(20),
        if (info.statementCsv != null && info.statementCsv!.isNotEmpty)
          FilledButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                infoNotifier.setState(
                  (state) => state.copyWith(
                    accountName: accountController.text,
                  ),
                );
              }

              context.goNamed(OnboardingPage.name);
            },
            child: const Text("Continue"),
          ),
      ],
    );
  }
}
