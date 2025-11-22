import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/core/theme/app_colors.dart';

class SocialIcons extends StatelessWidget {
  final String imageUrl;
  const SocialIcons({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: AppColors.black.withOpacity(0.2))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(imageUrl, width: 50.w,),
        ),
      
      ),
    );
  }
}