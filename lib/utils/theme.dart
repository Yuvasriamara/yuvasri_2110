import 'package:flutter/material.dart';
import 'colors_constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.accentColor,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(color: AppColors.textPrimary, fontSize: 24),
        bodyLarge: TextStyle(color: AppColors.textSecondary, fontSize: 16),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      colorScheme: ColorScheme.dark().copyWith(
        secondary: AppColors.accentColor,
      ),
    );
  }
}
