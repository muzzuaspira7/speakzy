import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isLoading;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;

  const GradientButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.height = 52,
    this.borderRadius = 14,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onPressed,
      child: Container(
        height: height.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.gradientStart,
              AppColors.gradientEnd,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 22.h,
                  width: 22.h,
                  child: const CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leadingIcon != null) ...[
                      leadingIcon!,
                      SizedBox(width: 8.w),
                    ],
                    Text(
                      title,
                      style: AppTextStyles.button(),
                    ),
                    if (trailingIcon != null) ...[
                      SizedBox(width: 8.w),
                      trailingIcon!,
                    ],
                  ],
                ),
        ),
      ),
    );
  }
}
