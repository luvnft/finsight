import 'package:csv/csv.dart';
import 'package:csv/csv_settings_autodetection.dart';

class CSVService {
  final CsvToListConverter _csvToListConverter;
  final ListToCsvConverter _listToCsvConverter;

  static final CSVService _instance = CSVService._();
  static CSVService get instance => _instance;

  CSVService._()
      : _csvToListConverter = const CsvToListConverter(),
        _listToCsvConverter = const ListToCsvConverter();

  List<List<dynamic>> convertToList(String csv) {
    return _csvToListConverter.convert(
      csv,
      convertEmptyTo: EmptyValue.NULL,
      csvSettingsDetector: const FirstOccurrenceSettingsDetector(
        eols: ['\r\n', '\n'],
        fieldDelimiters: [',', ';'],
        textDelimiters: ['"', "'"],
        textEndDelimiters: ['"', "'"],
      ),
      shouldParseNumbers: true,
    );
  }

  String convertToCSV(List<List<dynamic>> csv) {
    return _listToCsvConverter.convert(
      csv,
      eol: '\n',
      fieldDelimiter: ',',
      textDelimiter: '"',
      textEndDelimiter: '"',
    );
  }
}
