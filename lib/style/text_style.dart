import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();
  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'Poppins ';
  TextStyle get textLight =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: font);
  TextStyle get textMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: font,
        fontSize: 12,
        color: Colors.white,
      );
  TextStyle get textSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: font);
  TextStyle get textExtraBold => TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: font,
      color: Colors.black,
      fontSize: 23);
  TextStyle get textBottonlabel => textExtraBold.copyWith(fontSize: 12);
}

extension ColorsAppExtensions on BuildContext {
  TextStyles get style => TextStyles.i;
}
