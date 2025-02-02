import 'package:flutter/material.dart';

class AppDevice {

  BuildContext context;

  AppDevice(this.context);

  bool isDesktop() {
    return MediaQuery.of(context).size.width >= 1300;
  }

  bool isTablet() {
    return MediaQuery.of(context).size.width < 1300 &&
        MediaQuery.of(context).size.width > 600;
  }

  bool isMobile() {
    return MediaQuery.of(context).size.width <= 600;
  }
}
