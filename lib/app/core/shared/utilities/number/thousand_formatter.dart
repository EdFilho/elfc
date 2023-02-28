import 'package:intl/intl.dart';

String thousandFormatter(double number) {
  NumberFormat numberFormat = NumberFormat.decimalPattern("pt");

  return numberFormat.format(number);
}
