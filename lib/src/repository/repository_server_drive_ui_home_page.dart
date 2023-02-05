import 'imports.dart';

class RepositoryServerDriveUIHomePage {
  List<Widget> modelWidget = [];

  Future<List<ModelServerDriveUiHomePage>> getJsonHomePage() async {
    final responseUI = await rootBundle
        .loadString("assets/json/serve_drive_ui_home_page.json");
    final views = serverDriveUiFromJson(responseUI);
    return views;
  }

  List<Widget> createUIHomePage(List<ModelServerDriveUiHomePage> serveui) {
    for (var element in serveui) {
      modelWidget.add(renderWidgetsHome(element));
    }
    return modelWidget;
  }

  renderWidgetsHome(view) {
    ModelServerDriveUiHomePage ui = view;
    if (ui.container1.ui == "HomePageCustomHeaderWidget" &&
        ui.container2.ui == "HomePageCustomPayWidget" &&
        ui.container3.ui == "HomePageCustomReceived" &&
        ui.container4.ui == "HomePageCustomFooterWidget") {
      return Column(
        children: [
          HomePageCustomHeaderWidget(
              primaryColor: ui.container1.primaryColor,
              secondaryColor: ui.container1.secondaryColor,
              colortext: ui.container1.colortext),
          HomePageCustomPayWidget(
            valueColorIconsPay: ui.container2.valueColorIconsPay,
            valueColorTextH1: ui.container2.valueColorTextH1,
            valueColorTextH2: ui.container2.valueColorTextH2,
          ),
          HomePageCustomReceived(
              colorIconHex: ui.container3.colorIconHex,
              colorTextHex: ui.container3.colorTextHex),
          HomePageCustomFooterWidget(
            colorFooterHex: ui.container4.colorFooterHex,
          )
        ],
      );
    }
  }
}
