import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../shared/theme.dart';
import 'app_controller.dart';
import 'app_routes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    final appController = Get.put(AppController(), permanent: true);
    return GestureDetector(
      onTap: () => appController.setCurrentFocus(context),
      child: ScreenUtilInit(
        designSize: const Size(1080, 2160),
        builder: (BuildContext context, child) => GetMaterialApp(
          title: 'ELFC',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          locale: const Locale('pt', 'BR'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('pt', 'BR')],
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.leftToRightWithFade,
          initialRoute: Routes.initial,
          getPages: AppRoutes.routes,
        ),
      ),
    );
  }
}
