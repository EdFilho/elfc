import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';
import '../events/calendar/calendar.dart';
import '../manager/dashboard/dashboard.dart';
import '../rewards/score/score.dart';
import '../social/feed/feed.dart';
import '../user/profile/profile.dart';

class HomeController extends GetxController {
  AuthController authController;

  HomeController({
    required this.authController,
  });

  RxInt indexScreen = 0.obs;

  void setScreen(int index) {
    indexScreen.value = index;
  }

  RxList<Widget> screens = <Widget>[
    const FeedPage(),
    const CalendarPage(),
    const DashboardPage(),
    const ScorePage(),
    const ProfilePage(),
  ].obs;
}
