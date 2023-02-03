import 'package:flutter/material.dart';

import 'routes/routes_app.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: AppRoutes.routes,
    );
  }
}
