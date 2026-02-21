import 'package:flutter/material.dart';

extension Responsive on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
  bool get isEn => Localizations.localeOf(this).languageCode == 'en';
}
