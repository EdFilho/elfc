import 'package:get/get.dart';

import '../../core/configs/app_binding.dart';
import 'modules/auth/login/login.dart';
import 'modules/auth/onboarding/onboarding.dart';
import 'modules/auth/register/register.dart';
import 'modules/home/home.dart';
import 'modules/splash/splash.dart';
import 'modules/user/account_info/account_info.dart';
import 'modules/user/edit_profile/edit_profile.dart';
import 'modules/user/profile_settings/profile_settings.dart';
import 'modules/user/security/security.dart';

abstract class Routes {
  static const initial = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const editProfile = '/profile/edit';
  static const profileSettings = '/profile/settings';
  static const accountInfo = '/profile/accountInfo_info';
  static const security = '/profile/security';
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
    GetPage(
      name: Routes.editProfile,
      page: () => const EditProfilePage(),
      transition: Transition.native,
      binding: EditProfileBindings(),
    ),
    GetPage(
      name: Routes.profileSettings,
      page: () => const ProfileSettingsPage(),
      transition: Transition.native,
      binding: ProfileSettingsBindings(),
    ),
    GetPage(
      name: Routes.accountInfo,
      page: () => const AccountInfoPage(),
      transition: Transition.native,
      binding: AccountInfoBindings(),
    ),
    GetPage(
      name: Routes.security,
      page: () => const SecurityPage(),
      transition: Transition.native,
      binding: SecurityBindings(),
    ),
  ];
}
