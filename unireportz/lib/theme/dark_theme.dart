import 'package:flutter/material.dart';
import '/theme/colors.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkPrimary,
  scaffoldBackgroundColor: AppColors.darkBackground,
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkAccent,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darkBackground,
    foregroundColor: AppColors.lightBackground,
  ),
  textTheme: TextTheme(bodyLarge: TextStyle(color: AppColors.lightInputBg, fontSize: 18)),
);
