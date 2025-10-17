
import 'package:flutter/material.dart';
import '/theme/colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.lightPrimary,
  scaffoldBackgroundColor: AppColors.lightBackground,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.lightPrimary,
    foregroundColor: AppColors.lightAccent,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: AppColors.darkBackground,fontSize: 18)
  )
);