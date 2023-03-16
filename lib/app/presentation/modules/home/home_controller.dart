import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../events/calendar/calendar.dart';
import '../rewards/score/score.dart';
import '../social/feed/feed.dart';
import '../user/profile/profile.dart';

class HomeController extends GetxController {
  RxInt indexScreen = 0.obs;

  void setScreen(int index) {
    indexScreen.value = index;
  }

  RxList<Widget> screens = <Widget>[
    const FeedPage(),
    const CalendarPage(),
    const ScorePage(),
    const ProfilePage(),
  ].obs;
}
