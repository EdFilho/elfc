import 'package:elfc/app/ui/pages/auth/login/login_binding.dart';
import 'package:elfc/app/ui/pages/auth/login/login_page.dart';
import 'package:get/get.dart';

import '../../ui/pages/home/home_binding.dart';
import '../../ui/pages/home/home_page.dart';
import '../../ui/pages/splash/splash_bindings.dart';
import '../../ui/pages/splash/splash_page.dart';
import 'app_binding.dart';

abstract class Routes {
  static const initial = '/';
  static const login = '/login';
  static const home = '/home';
}

abstract class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => const SplashPage(),
      transition: Transition.native,
      bindings: [
        AppBinding(),
        SplashBindings(),
      ],
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      transition: Transition.native,
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      transition: Transition.native,
      binding: HomeBinding(),
    ),
  ];
}
