import 'package:flutter/material.dart';

extension SizeDevice on BuildContext {
  Size get sizeDevice => MediaQuery.of(this).size;
}
