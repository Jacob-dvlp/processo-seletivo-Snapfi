import 'package:flutter/material.dart';

import 'home_page_custom_footer_widget.dart';
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
        children: const [
          HomePageCustomHeaderWidget(
            colortext: 0xFFFFFFFF,
            primaryColor: 0XFFFF5CBD,
            secondaryColor: 0XFFD33091,
          ),
          HomePageCustomPayWidget(
            valueColorIconsPay: 0XFFFF5CBD,
            valueColorTextH1: 0xFF000000,
            valueColorTextH2: 0xFF000000,
          ),
          HomePageCustomReceived(
            colorIconHex: 0xFF000000,
            colorTextHex: 0xFF000000,
          ),
          HomePageCustomFooterWidget(
            colorFooterHex: 0XFFD33091,
          )
        ],
      ),
    );
  }
}
