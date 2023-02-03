import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();
  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'Poppins ';
  TextStyle textLight(Color color, FontWeight fontWeight, double fontSize) =>
      TextStyle(
          fontWeight: fontWeight,
          fontFamily: font,
          color: color,
          fontSize: fontSize);

  TextStyle textMedium(Color color, double fontSize) => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: font,
        fontSize: fontSize,
        color: color,
      );

  TextStyle textSemiBold(FontWeight fontWeight, Color color, double fontSize) =>
      TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: font,
          color: color,
          fontSize: fontSize);

  TextStyle textExtraBold(
          Color color, FontWeight fontWeight, double fontSize) =>
      TextStyle(
          fontWeight: fontWeight,
          fontFamily: font,
          color: color,
          fontSize: fontSize);
}

extension ColorsAppExtensions on BuildContext {
  TextStyles get style => TextStyles.i;
}
