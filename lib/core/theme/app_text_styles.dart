import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._(); 

  // /// Headings
  static TextStyle heading1({Color color = AppColors.dark}) => GoogleFonts.poppins(
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
        color: color,
      );

  static TextStyle heading2({Color color = AppColors.dark}) => GoogleFonts.poppins(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle heading3({Color color = AppColors.dark}) => GoogleFonts.poppins(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: color,
      );

  // /// Body Text
  static TextStyle bodyLarge({Color color = AppColors.dark, FontWeight fontWeight = FontWeight.w400}) => GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: fontWeight,
        color: color,
      );

        static TextStyle heading({Color color = AppColors.dark, FontWeight fontWeight = FontWeight.w400}) => GoogleFonts.poppins(
        fontSize: 18.sp,
        fontWeight: fontWeight,
        color: color,
      );

  static TextStyle bodyMedium({Color color = AppColors.dark}) => GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle bodySmall({Color color = AppColors.dark}) => GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: color,
      );

        static TextStyle bodySmallBold({Color color = AppColors.primaryBlue}) => GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );

  // /// Buttons
  static TextStyle button({Color color = Colors.white}) => GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );

  // /// Captions
  static TextStyle caption({Color color = AppColors.grey}) => GoogleFonts.poppins(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: color,
      );
}
