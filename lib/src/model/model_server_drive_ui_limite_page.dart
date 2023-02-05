import 'dart:convert';

List<ModelServerDriveUiLimitePage> modelServerDriveUiLimitePageFromJson(
        String str) =>
    List<ModelServerDriveUiLimitePage>.from(
        json.decode(str).map((x) => ModelServerDriveUiLimitePage.fromJson(x)));

class ModelServerDriveUiLimitePage {
  ModelServerDriveUiLimitePage({
    required this.formLimite,
  });

  FormLimitePage formLimite;

  factory ModelServerDriveUiLimitePage.fromJson(Map<String, dynamic> json) =>
      ModelServerDriveUiLimitePage(
        formLimite: FormLimitePage.fromJson(json["formLimite"]),
      );
}

class FormLimitePage {
  FormLimitePage({
    required this.ui,
    required this.colortextH1,
    required this.colorTextH4,
    required this.colorBtnHex,
    required this.colortextForm,
  });

  String ui;
  String colortextH1;
  String colorTextH4;
  String colorBtnHex;
  String colortextForm;

  factory FormLimitePage.fromJson(Map<String, dynamic> json) => FormLimitePage(
        ui: json["ui"],
        colortextH1: json["colortextH1"],
        colorTextH4: json["colorTextH4"],
        colorBtnHex: json["colorBtnHex"],
        colortextForm: json["colortextForm"],
      );

  Map<String, dynamic> toJson() => {
        "ui": ui,
        "colortextH1": colortextH1,
        "colorTextH4": colorTextH4,
        "colorBtnHex": colorBtnHex,
        "colortextForm": colortextForm,
      };
}
