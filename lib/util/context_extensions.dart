import 'package:flutter/material.dart';

extension AppStyle on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension AppWindowSize on BuildContext {
  Size get windowSize => MediaQuery.sizeOf(this);

  double fractionalHeight({required double fraction}) =>
      windowSize.height * fraction;
  double fractionalWidth({required double fraction}) =>
      windowSize.width * fraction;
}
