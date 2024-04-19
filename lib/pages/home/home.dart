import 'package:file_picker/file_picker.dart';
import 'package:finsight/pages/csv_edit/csv_edit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  static const name = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Finsight'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () async {
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
              icon: const Icon(Icons.upload_file),
              label: const Text("Add .csv"),
            )
          ],
        ),
      ),
    );
  }
}
