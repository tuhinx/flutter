

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/const/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buttonStyle {

  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.deep_orange,
    minimumSize: Size(double.infinity, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
    )
  );

  static final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
      foregroundColor: AppColors.deep_orange,
      side: BorderSide(
        width: 2.w,
        color: AppColors.deep_orange,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(10.w)),
      )
  );


}