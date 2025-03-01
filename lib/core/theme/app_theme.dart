import 'package:flutter/material.dart';
import 'package:tap_invest/core/theme/color_schemes.dart';
import 'package:tap_invest/core/theme/text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Color(0xffF3F4F6),
    textTheme: AppTextStyles.textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );

  // static ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: AppColors.primary,
  //   scaffoldBackgroundColor: Colors.black,
  //   textTheme: AppTextStyles.textThemeDark,
  // );
}
