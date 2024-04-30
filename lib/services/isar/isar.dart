import 'package:finsight/models/models.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  static Isar? _isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = Isar.open(
      schemas: [InfoStateSchema],
      directory: dir.path,
    );
  }
}

Isar get isar {
  if (IsarService._isar == null) {
    throw Exception('Isar not initialized');
  }
  return IsarService._isar!;
}
