import 'package:appnest_app/core/utils/app_device.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var device = AppDevice(context);
    if (device.isDesktop()) {
      return desktopHeader();
    } else {
      return device.isTablet() ? tabletHeader() : mobileHeader();
    }
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}

Widget desktopHeader() {
  return Container(
    child: Text("AppBar : Desktop"),
  );
}

Widget tabletHeader() {
  return Container(
    child: Text("AppBar : Tablet"),
  );
}

Widget mobileHeader() {
  return Container(
    child: Text("AppBar : Mobile"),
  );
}
