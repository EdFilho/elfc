import 'package:elfc/app/ui/pages/home/components/tabs/calendar/calendar.dart';
import 'package:elfc/app/ui/pages/home/components/tabs/feed/feed.dart';
import 'package:elfc/app/ui/pages/home/components/tabs/profile/profile.dart';
import 'package:elfc/app/ui/pages/home/components/tabs/score/score.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
