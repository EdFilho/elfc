import 'package:get/get.dart';

class CalendarController extends GetxController {
  Rx<DateTime> selectedDay = DateTime.now().obs;
  Rx<DateTime> focusedDay = DateTime.now().obs;
}
