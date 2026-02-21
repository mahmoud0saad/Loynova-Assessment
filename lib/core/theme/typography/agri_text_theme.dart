import 'package:flutter/material.dart';
import 'package:loynova_app/core/theme/typography/typography_base.dart';

class AgriTextTheme extends InheritedWidget {
  const AgriTextTheme({super.key, required super.child, required this.theme});
  final AgriTypographyTheme theme;

  static AgriTypographyTheme of(BuildContext context) {
    try {
      return (context.dependOnInheritedWidgetOfExactType<AgriTextTheme>())!
          .theme;
    } catch (e) {
      throw Exception("Can't find AgriTextTheme in context tree");
    }
  }

  @override
  bool updateShouldNotify(covariant AgriTextTheme oldWidget) {
    return theme != oldWidget.theme;
  }
}
