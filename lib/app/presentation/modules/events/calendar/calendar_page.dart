import '../../../components/components.dart';

import 'calendar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarPage extends GetView<CalendarController> {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => CustomCalendar(
                  focusedDay: controller.focusedDay.value,
                  selectedDay: controller.selectedDay.value,
                  onDaySelected: (selectedDay, focusedDay) {
                    controller.selectedDay.value = selectedDay;
                    controller.focusedDay.value = focusedDay;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
