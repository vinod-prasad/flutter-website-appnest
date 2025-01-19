import 'package:appnest_app/nav/routes.dart';
import 'package:appnest_app/nav/routes_middleware.dart';
import 'package:appnest_app/view/apps_screen.dart';
import 'package:appnest_app/view/contact_screen.dart';
import 'package:appnest_app/view/gallery_screen.dart';
import 'package:appnest_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../view/error_screen.dart';
import '../view/responsive_home_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (context) => ResponsiveHomeScreen());
      case AppRoutes.appsRoute:
        return MaterialPageRoute(builder: (context) => AppsScreen());
      case AppRoutes.galleryRoute:
        return MaterialPageRoute(builder: (context) => GalleryScreen());
      case AppRoutes.contactRoute:
        return MaterialPageRoute(builder: (context) => ContactScreen());
      default:
        return MaterialPageRoute(builder: (context) => ErrorScreen());
    }
  }

  static final List<GetPage> appPages = [
    GetPage(
        name: AppRoutes.homeRoute,
        page: () => ResponsiveHomeScreen(),
        middlewares: [AppRoutesMiddleware()]),
    GetPage(
        name: AppRoutes.appsRoute,
        page: () => AppsScreen(),
        middlewares: [AppRoutesMiddleware()]),
    GetPage(
        name: AppRoutes.galleryRoute,
        page: () => GalleryScreen(),
        middlewares: [AppRoutesMiddleware()]),
    GetPage(
        name: AppRoutes.contactRoute,
        page: () => ContactScreen(),
        middlewares: [AppRoutesMiddleware()]),
    GetPage(
        name: AppRoutes.errorRoute,
        page: () => ErrorScreen(),
        middlewares: [AppRoutesMiddleware()]),
  ];
}
