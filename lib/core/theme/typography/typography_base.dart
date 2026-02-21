import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@override
abstract class AgriTypographyTheme extends Equatable {
  const AgriTypographyTheme();

  String get id;
  AgriBaseTextStyle get small; //10
  AgriBaseTextStyle get body2; //12
  AgriBaseTextStyle get body1; //14
  AgriBaseTextStyle get button; //14
  AgriBaseTextStyle get heading5; //14
  AgriBaseTextStyle get heading4; //14
  AgriBaseTextStyle get heading3; //16
  AgriBaseTextStyle get heading2; //18
  AgriBaseTextStyle get heading1; //20
  @override
  List<Object?> get props => [id];
}

abstract class AgriBaseTextStyle {
  TextStyle bold({Color? color}); // 700
  TextStyle semi({Color? color}); //600
  TextStyle med({Color? color}); // 500
  TextStyle regular({Color? color}); //400
}

class AgriFontWeight {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semi = FontWeight.w600;
  static const FontWeight med = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
}

class AgriFontFamilies {
  static const String notoSans = "FontFamily.notoSans";
}
