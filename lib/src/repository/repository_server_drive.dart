import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../page/home/custom/home_page_custom_footer_widget.dart';
import '../../page/home/custom/home_page_custom_header_widget.dart';
import '../../page/home/custom/home_page_custom_pay_widget.dart';
import '../../page/home/custom/home_page_custom_received.dart';
import '../model/model.dart';

class RepositoryServerDriveUI {
  List<Widget> modelWidget = [];

  Future<List<ServerDriveUi>> init() async {
    final responseUI =
        await rootBundle.loadString("assets/json/serve_drive_ui.json");
    final views = serverDriveUiFromJson(responseUI);
    return views;
  }

  List<Widget> createUI(List<ServerDriveUi> serveui) {
    for (var ui in serveui) {
      modelWidget.add(renderWidgets(ui));
    }
    return modelWidget;
  }

  renderWidgets(data) {
    ServerDriveUi model = data;
    if (model.container1.ui == "HomePageCustomHeaderWidget" &&
        model.container2.ui == "HomePageCustomPayWidget" &&
        model.container3.ui == "HomePageCustomReceived" &&
        model.container4.ui == "HomePageCustomFooterWidget") {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePageCustomHeaderWidget(
                primaryColor: model.container1.primaryColor,
                secondaryColor: model.container1.secondaryColor,
                colortext: model.container1.colortext),
            HomePageCustomPayWidget(
              valueColorIconsPay: model.container2.valueColorIconsPay,
              valueColorTextH1: model.container2.valueColorTextH1,
              valueColorTextH2: model.container2.valueColorTextH2,
            ),
            HomePageCustomReceived(
                colorIconHex: model.container3.colorIconHex,
                colorTextHex: model.container3.colorTextHex),
            HomePageCustomFooterWidget(
              colorFooterHex: model.container4.colorFooterHex,
            )
          ],
        ),
      );
    }
  }
}
