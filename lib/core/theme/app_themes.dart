import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryBlue,
    primaryColorLight: AppColors.lightBlue,
    disabledColor: AppColors.red900,
    splashColor: AppColors.lightBlue,
    fontFamily: "NotoSans",
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.black),
    scaffoldBackgroundColor: Colors.white,
    //app bar theme
    // appBarTheme: AppBarTheme(
    //   color: AppColors.white,
    //   shadowColor: AppColors.lightPrimary,
    //   elevation: 0,
    //   toolbarHeight: 60,
    //   titleTextStyle: getBoldStyle(
    //     size: 20,
    //   ),
    //   iconTheme: const IconThemeData(color: AppColors.black),
    // ),
    // tabBarTheme: TabBarTheme(
    //   unselectedLabelColor: AppColors.gray800,
    //   indicator: BoxDecoration(
    //     color: AppColors.darkBlue,
    //     borderRadius: BorderRadius.circular(5),
    //   ),
    //   labelStyle: getBoldStyle(),
    //   labelPadding: EdgeInsets.zero,
    // ),
    //elevated button theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     textStyle: getRegularStyle(fontColor: Colors.white),
    //     elevation: 0,
    //     backgroundColor: AppColors.primary,
    //     shape: RoundedRectangleBorder(borderRadius: StaticNumbers.radius8),
    //   ),
    // ),

    //text theme
    // textTheme: TextTheme(
    //   displayLarge:
    //       getSemiBoldStyle(fontSize: 16, fontColor: AppColors.black),
    //   titleMedium: getMediumStyle(fontSize: 16, fontColor: AppColors.black),
    //   bodyLarge: getRegularStyle(fontSize: 16, fontColor: AppColors.gray),
    //   titleSmall: getBoldStyle(),
    // ),

    // //input decoration theme -> text form field
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: const EdgeInsets.all(8),

    //   //hint style
    //   hintStyle: getRegularStyle(fontColor: AppColors.gray),

    //   //label style
    //   labelStyle: getMediumStyle(),

    //   //error style
    //   errorStyle:
    //       getRegularStyle(fontColor: AppColors.error).copyWith(height: 0.5),

    //   //enabled border
    //   enabledBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(width: 1.5, color: AppColors.lightGrey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   // disabledBorder
    //   disabledBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(width: 1.5, color: AppColors.lightGrey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   //focused border
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(width: 1.5, color: AppColors.primary),
    //     borderRadius: BorderRadius.circular(8),
    //   ),

    //   //error border
    //   errorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(width: 1.5, color: AppColors.error),
    //     borderRadius: BorderRadius.circular(8),
    //   ),

    //   //focused error border
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderSide:
    //         const BorderSide(width: 1.5, color: AppColors.lightPrimary),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    // ),

    // // check box
    // unselectedWidgetColor: AppColors.naturalGrey,
    // checkboxTheme: CheckboxThemeData(
    //   fillColor: WidgetStateProperty.all(AppColors.blue),
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    // ),
  );
}
