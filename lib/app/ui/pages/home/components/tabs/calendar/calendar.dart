import 'package:elfc/app/ui/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarPage extends GetView<HomeController> {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('CalendarController'),
      ),
    );
  }
}
