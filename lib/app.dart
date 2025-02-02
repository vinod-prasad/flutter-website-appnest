import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/routes/router.dart';
import 'config/routes/routes.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/theme_controller.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(ThemeController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Nest",
      // themeMode: ThemeMode.dark,
      theme: lightTheme,
      darkTheme: darkTheme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoutes.homeRoute,
      getPages: AppRouter.appPages,
      unknownRoute: GetPage(
          name: "/page-not-found",
          page: () => Scaffold(
                body: Center(child: Text("Page Not Found")),
              )),
    );
  }
}
