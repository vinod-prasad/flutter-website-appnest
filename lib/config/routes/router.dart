import 'package:appnest_app/config/routes/routes.dart';
import 'package:appnest_app/config/routes/routes_middleware.dart';
import 'package:appnest_app/presentation/pages/apps_screen.dart';
import 'package:appnest_app/presentation/pages/contact_screen.dart';
import 'package:appnest_app/presentation/pages/gallery_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/pages/appnest_layout.dart';
import '../../presentation/pages/error_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (context) => AppNestApp());
        // return MaterialPageRoute(builder: (context) => ResponsiveHomeScreen());
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
        page: () => AppNestApp(),
        // page: () => ResponsiveHomeScreen(),
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
