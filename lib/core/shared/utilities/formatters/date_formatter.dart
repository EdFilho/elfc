import 'package:intl/intl.dart';

String dateFormatter(DateTime dateTime) {
  final formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(dateTime);
}

DateTime parseDateString(String dateString) {
  final parts = dateString.split('/');
  final day = int.parse(parts[0]);
  final month = int.parse(parts[1]);
  final year = int.parse(parts[2]);
  
  return DateTime(year, month, day);
}
