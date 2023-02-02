import 'package:flutter/material.dart';

import 'custom/home_page_custom_body_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageCustomBodyWidgets(),
    );
  }
}
