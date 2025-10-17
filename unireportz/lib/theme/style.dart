import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/theme/theme_controller.dart';
import '/theme/colors.dart';

class CustomStyle {
  // Or Responsive padding based on screen height
  static EdgeInsetsGeometry paddingWithAppHight(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return EdgeInsets.only(
      top: height * 0.05,
      left: 20.0,
      right: 20.0,
    ); // 16 default
  }

  // ===== Custom Text Style Section ======= //
  // ===== DarkMode Style Section ======= //

  static TextStyle heading1(ThemeController themeController) {
    return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      color: themeController.isDarkMode? AppColors.darkText : AppColors.darkAccent,
    );
  }

  static TextStyle title(ThemeController themeController) {
    return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
    );
  }

  static TextStyle subtitle(ThemeController themeController) {
    return TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      fontFamily: 'Roboto',
    );
  }

  static TextStyle elevatedButtonTextStyle(ThemeController themeController) {
    return TextStyle(
      color: themeController.isDarkMode
          ? AppColors.darkText
          : AppColors.lightBackground,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static ButtonStyle elevatedButtonStyle(ThemeController themeController) {
    return ElevatedButton.styleFrom(
      backgroundColor: themeController.isDarkMode
          ? AppColors.darkPrimary
          : AppColors.lightPrimary,
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }


  static TextStyle outlinedButtonTextStyle(ThemeController themeController) {
    return TextStyle(
      color: themeController.isDarkMode
          ? AppColors.darkText
          : AppColors.darkAccent,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static ButtonStyle outlinedButtonStyle(ThemeController themeController) {
    return ElevatedButton.styleFrom(

      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      side: BorderSide(
        color: themeController.isDarkMode
            ? AppColors.darkText
            : AppColors.darkAccent,
        width: 1,
      ),
    );
  }
}
