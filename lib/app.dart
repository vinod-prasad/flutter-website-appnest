import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'nav/router.dart';
import 'nav/routes.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "App Nest",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
