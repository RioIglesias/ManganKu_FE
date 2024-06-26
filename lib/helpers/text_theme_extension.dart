import 'package:flutter/material.dart';

extension BuildContextA on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);
}
