import 'package:flutter/material.dart';

class BoxDecorations {
  static BoxDecorations? _instance;
  // Avoid self isntance
  BoxDecorations._();
  static BoxDecorations get i {
    _instance ??= BoxDecorations._();
    return _instance!;
  }

  ShapeBorder decoration(double radius) => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      );
}

extension ColorsAppExtensions on BuildContext {
  BoxDecorations get decorationBox => BoxDecorations.i;
}
