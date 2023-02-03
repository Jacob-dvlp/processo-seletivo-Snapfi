import 'package:flutter/material.dart';

class StyleInputDecoration {
  static StyleInputDecoration? _instance;
  StyleInputDecoration._();
  static StyleInputDecoration get i {
    _instance ??= StyleInputDecoration._();
    return _instance!;
  }

  InputDecoration inputDecoration({bool? labelText}) => InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        labelText: labelText! ? "Digite o valor" : "",
        focusedBorder: const OutlineInputBorder(),
        prefixText: labelText ? "R\$ " : "",
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0XFF02020A),
        ),
        prefixStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0XFF02020A),
        ),
      );
}

extension StyleInputDecorationExtensions on BuildContext {
  StyleInputDecoration get input => StyleInputDecoration.i;
}
