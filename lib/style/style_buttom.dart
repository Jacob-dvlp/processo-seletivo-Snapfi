import 'package:flutter/material.dart';

class StyleButtom {
  static StyleButtom? _instance;
  // Avoid self isntance
  StyleButtom._();
  static StyleButtom get i {
    _instance ??= StyleButtom._();
    return _instance!;
  }

  ButtonStyle primaryBotton(Color color) => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(56),
      ),
      backgroundColor: color);
}

OutlineInputBorder defaultInputBorder(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide(color: color));
