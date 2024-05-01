import 'package:intl/intl.dart';

final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: 0);
final formatCurrencyCompact =
    NumberFormat.compactCurrency(locale: "en", decimalDigits: 0, symbol: "\$");
final formatCurrencyWithDecimal =
    NumberFormat.simpleCurrency(locale: "en", decimalDigits: 2);
final formatPercentageWithoutDecimal =
    NumberFormat.decimalPercentPattern(locale: "en", decimalDigits: 0);
final formatPercentageWithDecimal =
    NumberFormat.decimalPercentPattern(locale: "en", decimalDigits: 2);
final formatInt = NumberFormat.decimalPattern(
  "en",
);

// ignore: non_constant_identifier_names
final formatDate_yYMM = DateFormat.yMMM();
// ignore: non_constant_identifier_names
final formateDate_yMMMd = DateFormat.yMMMd();
