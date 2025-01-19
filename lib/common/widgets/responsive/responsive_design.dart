import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, this.desktop, this.tablet, this.mobile});

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth > 1000) {
        return desktop ?? Container();
      } else if (constraints.maxWidth > 600) {
        return tablet ?? Container();
      } else {
        return mobile ?? Container();
      }
    });
  }
}
