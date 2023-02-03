import 'package:flutter/material.dart';

import '../page/home/home_page.dart';
import '../page/limit/limit_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    "/": (context) => const HomePage(),
    "/limit": (context) => const LimitPage()
  };
}
