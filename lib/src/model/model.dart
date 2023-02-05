// To parse this JSON data, do
//
//     final serverDriveUi = serverDriveUiFromJson(jsonString);

import 'dart:convert';

List<ServerDriveUi> serverDriveUiFromJson(String str) =>
    List<ServerDriveUi>.from(
        json.decode(str).map((x) => ServerDriveUi.fromJson(x)));

class ServerDriveUi {
  ServerDriveUi({
    required this.container1,
    required this.container2,
    required this.container3,
    required this.container4,
  });

  Container1 container1;
  Container2 container2;
  Container3 container3;
  Container4 container4;

  factory ServerDriveUi.fromJson(Map<String, dynamic> json) => ServerDriveUi(
        container1: Container1.fromJson(json["container1"]),
        container2: Container2.fromJson(json["container2"]),
        container3: Container3.fromJson(json["container3"]),
        container4: Container4.fromJson(json["container4"]),
      );
}

class Container1 {
  Container1({
    required this.ui,
    required this.colortext,
    required this.primaryColor,
    required this.secondaryColor,
  });

  String ui;
  String colortext;
  String primaryColor;
  String secondaryColor;

  factory Container1.fromJson(Map<String, dynamic> json) => Container1(
        ui: json["ui"],
        colortext: json["colortext"],
        primaryColor: json["primaryColor"],
        secondaryColor: json["secondaryColor"],
      );

  Map<String, dynamic> toJson() => {
        "ui": ui,
        "colortext": colortext,
        "primaryColor": primaryColor,
        "secondaryColor": secondaryColor,
      };
}

class Container2 {
  Container2({
    required this.ui,
    required this.valueColorIconsPay,
    required this.valueColorTextH1,
    required this.valueColorTextH2,
  });

  String ui;
  String valueColorIconsPay;
  String valueColorTextH1;
  String valueColorTextH2;

  factory Container2.fromJson(Map<String, dynamic> json) => Container2(
        ui: json["ui"],
        valueColorIconsPay: json["valueColorIconsPay"],
        valueColorTextH1: json["valueColorTextH1"],
        valueColorTextH2: json["valueColorTextH2"],
      );
}

class Container3 {
  Container3({
    required this.ui,
    required this.colorIconHex,
    required this.colorTextHex,
  });

  String ui;
  String colorIconHex;
  String colorTextHex;

  factory Container3.fromJson(Map<String, dynamic> json) => Container3(
        ui: json["ui"],
        colorIconHex: json["colorIconHex"],
        colorTextHex: json["colorTextHex"],
      );
}

class Container4 {
  Container4({
    required this.ui,
    required this.colorFooterHex,
  });

  String ui;
  String colorFooterHex;

  factory Container4.fromJson(Map<String, dynamic> json) => Container4(
        ui: json["ui"],
        colorFooterHex: json["colorFooterHex"],
      );
}
