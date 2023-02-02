import 'package:flutter/material.dart';

import 'home_page_custom_header_widget.dart';
import 'home_page_custom_pay_widget.dart';

class HomePageCustomBodyWidgets extends StatelessWidget {
  const HomePageCustomBodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [HomePageCustomHeaderWidget(), HomePageCustomPayWidget()],
    );
  }
}