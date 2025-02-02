import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRouteObserver extends GetObserver {
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {



  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {}

  @override
  void didRemove(Route<dynamic>? route, Route<dynamic>? previousRoute) {}

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {}
}
