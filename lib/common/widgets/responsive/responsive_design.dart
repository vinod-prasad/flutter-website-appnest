import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=ot52NHWEtn4&list=PL5jb9EteFAOAIr7tjUpz1n-_szVSx8JVz&index=9

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
