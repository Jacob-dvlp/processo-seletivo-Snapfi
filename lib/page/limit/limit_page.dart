import 'package:flutter/material.dart';

import 'custom/limit_page_custom_body_widgets.dart';

class LimitPage extends StatelessWidget {
  const LimitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LimitPageCustomBodyWidgets(),
    );
  }
}
