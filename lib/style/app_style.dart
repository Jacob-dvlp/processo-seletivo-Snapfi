import 'package:flutter/material.dart';

import 'colors_app.dart';

class AppStyle {
  static AppStyle? _instance;
  // Avoid self isntance
  AppStyle._();
  static AppStyle get i {
    _instance ??= AppStyle._();
    return _instance!;
  }

  ButtonStyle get primaryBotton => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(56),
      ),
      backgroundColor: ColorsApp.i.primary);
}

OutlineInputBorder defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: Color(0XFFB7B7B9)));
