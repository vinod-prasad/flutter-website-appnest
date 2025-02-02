import 'package:appnest_app/common/widgets/layouts/templates/site_layout.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/responsive/screens/desktop_layout.dart';
import '../../common/widgets/responsive/screens/mobile_layout.dart';
import '../../common/widgets/responsive/screens/tablet_layout.dart';

class ResponsiveHomeScreen extends StatelessWidget {
  const ResponsiveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppSiteTemplate(
      desktop: DesktopLayout(),
      tablet: TabletLayout(),
      mobile: MobileLayout(),
    );
  }
}
