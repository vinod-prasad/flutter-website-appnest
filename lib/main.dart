import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'app.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/theme_controller.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                themeController.changeTheme();
              },
              icon: Obx(() => themeController.isDarkMode.value
                  ? Icon(Icons.light_mode)
                  : Icon(Icons.dark_mode))),
        ),
        body: Center(child: Text("Test Theme mode [ Dark / Light ]")),
      ),
    );
  }
}