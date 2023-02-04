import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/tabs/calendar/calendar.dart';
import 'components/tabs/feed/feed.dart';
import 'components/tabs/profile/profile.dart';
import 'components/tabs/score/score.dart';

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
