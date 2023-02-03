import 'package:flutter/material.dart';

import '../../../style/style_colors.dart';
import 'home_page_custom_header_widget.dart';
import 'home_page_custom_pay_widget.dart';
import 'home_page_custom_received.dart';

class HomePageCustomBodyWidgets extends StatelessWidget {
  const HomePageCustomBodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomePageCustomHeaderWidget(
            colortext: 0xFFFFFFFF.toInt(),
            primaryColor: context.colors.primary,
            secondaryColor: context.colors.secondary,
          ),
          const HomePageCustomPayWidget(),
          const HomePageCustomReceived()
        ],
      ),
    );
  }
}
