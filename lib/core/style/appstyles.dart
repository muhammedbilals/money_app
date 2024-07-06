import 'package:flutter/material.dart';
import 'package:money_app/core/colors/appcolors.dart';

class AppStyles {
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight bold = FontWeight.w600;
  static FontWeight extraBold = FontWeight.w700;
  static FontWeight veryBold = FontWeight.w800;

  static TextStyle black20medius = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: medium,
  );

  static TextStyle black18regular = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: regular,
  );
}
