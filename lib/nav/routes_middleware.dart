import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppRoutesMiddleware extends GetMiddleware {
  var isAuthenticated = true;

  @override
  RouteSettings? redirect(String? route) {
    print('...Calling middleware : $route');
    return isAuthenticated
        ? null
        : RouteSettings(name: AppRoutes.homeRoute);
  }
}
