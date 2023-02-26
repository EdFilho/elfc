import 'package:intl/intl.dart';

String thousandFormatter(int number) {
  NumberFormat numberFormat = NumberFormat.decimalPattern("pt");

  return numberFormat.format(number);
}
