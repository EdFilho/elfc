import 'package:intl/intl.dart';

String toRealFormat(String value) {
  final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final doubleValue = double.tryParse(value.replaceAll(',', '.')) ?? 0.0;
  return formatter.format(doubleValue);
}
