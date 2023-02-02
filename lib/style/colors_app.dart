import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFFFF5CBD);
  Color get secondary => const Color(0XFFD33091);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
