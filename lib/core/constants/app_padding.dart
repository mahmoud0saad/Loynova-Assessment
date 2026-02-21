import 'package:flutter/material.dart';

import 'app_spacing.dart';

class AppPadding {
  static const EdgeInsets horizontalScreenPadding = EdgeInsets.symmetric(
    horizontal: 25,
  );
  static const EdgeInsets verticalScreenPadding = EdgeInsets.symmetric(
    vertical: 30,
  );
  static const EdgeInsets topScreenPadding = EdgeInsets.only(
    left: 25,
    right: 25,
    top: 30,
  );
  static const EdgeInsets allScreenPadding = EdgeInsets.symmetric(
    horizontal: 25,
    vertical: 15,
  );
  static const EdgeInsets screenPaddingVertical30 = EdgeInsets.symmetric(
        horizontal: 25,
    vertical: 30,
  );

  static const EdgeInsetsDirectional bottomSheetPadding =
      EdgeInsetsDirectional.only(start: 25, end: 25, bottom: 30);
  static const EdgeInsetsDirectional closeButtonPadding =
      EdgeInsetsDirectional.only(start: 10, end: 10, top: 15);
  static const EdgeInsets horizontalLarge = EdgeInsets.symmetric(  horizontal: 20,);
  static const EdgeInsets horizontalMedium = EdgeInsets.symmetric(  horizontal: 10,);
  static const EdgeInsets horizontalSmall = EdgeInsets.symmetric(horizontal: 5);
  static const EdgeInsets verticalLarge = EdgeInsets.symmetric(  vertical: 20,);
  static const EdgeInsets verticalMedium = EdgeInsets.symmetric(  vertical: 10,);
  static const EdgeInsets verticalSmall = EdgeInsets.symmetric(vertical: 5);
  static const EdgeInsets editTextPadding = EdgeInsets.all(10);
  static const EdgeInsets outterPadding = EdgeInsets.all(25);
  static const EdgeInsets cardPadding = EdgeInsets.all(8);
  static const EdgeInsets fabIconPadding = EdgeInsets.all(8);
  static const EdgeInsets mediumPadding = EdgeInsets.all(5);
  static const EdgeInsetsDirectional startPaddingLarge =
      EdgeInsetsDirectional.only(start: AppSpacing.large);

  static const EdgeInsets paddingTop10 = EdgeInsets.only(top: 10.0);
}
