import 'package:flutter/material.dart';
import 'package:money_app/core/colors/appcolors.dart';


class AppStyles {
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight bold = FontWeight.w600;
  static FontWeight extraBold = FontWeight.w700;
  static FontWeight veryBold = FontWeight.w800;

  static TextStyle red28medius = TextStyle(
    fontSize: 28,
    color: AppColors.red,
    fontWeight: medium,
  );

  static TextStyle black18regular = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: regular,
  );
  static TextStyle black26bold = TextStyle(
    fontSize: 30,
    color: AppColors.black.withOpacity(0.5),
    fontWeight: bold,
  );  
  static TextStyle red26bold = TextStyle(
    fontSize: 30,
    color: AppColors.red,
    fontWeight: bold,
  );

  static TextStyle black14medium = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: medium,
  );
  static TextStyle black14regular = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: regular,
  );
  static TextStyle black14mediumOpacity5 = TextStyle(
    fontSize: 14,
    color: AppColors.black.withOpacity(0.5),
    fontWeight: medium,
  );
  static TextStyle black16regularOpacity5 = TextStyle(
    fontSize: 16,
    color: AppColors.black.withOpacity(0.5),
    fontWeight: regular,
  );
  static TextStyle black16medium = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: medium,
  );
  static TextStyle red22medium = TextStyle(
    fontSize: 22,
    color: AppColors.red,
    fontWeight: medium,
  );

  static TextStyle black18medium = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: medium,
  );
  static TextStyle black16regular = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: regular,
  );
  static TextStyle black14bold = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: bold,
  );
}
