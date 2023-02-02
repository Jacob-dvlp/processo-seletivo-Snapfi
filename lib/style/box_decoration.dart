import 'package:flutter/material.dart';

class BoxDecorations {
  static BoxDecorations? _instance;
  // Avoid self isntance
  BoxDecorations._();
  static BoxDecorations get i {
    _instance ??= BoxDecorations._();
    return _instance!;
  }

  ShapeBorder decoration() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    );
  }
}

extension ColorsAppExtensions on BuildContext {
  BoxDecorations get decorationBox => BoxDecorations.i;
}