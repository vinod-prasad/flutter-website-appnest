import 'package:appnest_app/utils/app_device.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var device = AppDevice(context);
    if (device.isDesktop()) {
      return DesktopHeader();
    } else {
      return device.isTablet() ? TabletHeader() : MobileHeader();
    }
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}

Widget DesktopHeader() {
  return Container(
    child: Text("AppBar : Desktop"),
  );
}

Widget TabletHeader() {
  return Container(
    child: Text("AppBar : Tablet"),
  );
}

Widget MobileHeader() {
  return Container(
    child: Text("AppBar : Mobile"),
  );
}
