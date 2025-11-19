import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/app_colors.dart';

class ReusableTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final Widget? prefix;
  final Widget? suffix;
  final bool obscure;
  final TextInputType inputType;

  const ReusableTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.prefix,
    this.suffix,
    this.obscure = false,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        obscureText: obscure,
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: Colors.black45,
          ),
          border: InputBorder.none,
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
