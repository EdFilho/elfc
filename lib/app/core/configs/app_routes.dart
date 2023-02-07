import 'package:get/get.dart';

import '../../ui/pages/auth/login/login_binding.dart';
import '../../ui/pages/auth/login/login_page.dart';
import '../../ui/pages/auth/onboarding/onboarding_bindings.dart';
import '../../ui/pages/auth/onboarding/onboarding_page.dart';
import '../../ui/pages/auth/register/register_bindings.dart';
import '../../ui/pages/auth/register/register_page.dart';
import '../../ui/pages/home/home_binding.dart';
import '../../ui/pages/home/home_page.dart';
import '../../ui/pages/splash/splash_bindings.dart';
import '../../ui/pages/splash/splash_page.dart';
import 'app_binding.dart';

abstract class Routes {
  static const initial = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
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
      name: Routes.onboarding,
      page: () => const OnboardingPage(),
      transition: Transition.native,
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
      transition: Transition.native,
      binding: RegisterBindings(),
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
