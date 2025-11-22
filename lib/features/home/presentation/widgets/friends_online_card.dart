import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/core/theme/app_colors.dart';
import 'package:speakzy/core/theme/app_text_styles.dart';

class FriendsOnlineCard extends StatelessWidget {
  const FriendsOnlineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 185.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.r),
                child: Image.network(
                  "https://i.pravatar.cc/150?img=12",
                  height: 55.h,
                  width: 55.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 2,
                right: 2,
                child: Container(
                  height: 10.r,
                  width: 10.r,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.white, width: 2),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          // Content — SIMPLE ONLY
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "Muzammil",
                        style: AppTextStyles.bodyMedium(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Text("🇮🇳", style: TextStyle(fontSize: 14.sp)),
                    
                  ],
                ),

                SizedBox(height: 2.h),

                Text(
                  "• Male | C1 Level",
                  style: AppTextStyles.bodyMedium()
                      .copyWith(color: Colors.grey.shade600, fontSize: 12.sp),
                ),

                SizedBox(height: 4.h),

                Text(
                  "⭐⭐⭐⭐⭐",
                  style: AppTextStyles.bodyMedium(),
                ),
              ],
            ),
          ),

          const Spacer(),

          Container(
            height: 40.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryBlue,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12.r),
              ),
            ),
            child: Center(
              child: Text(
                "Invite Now",
                style: AppTextStyles.bodySmallBold(color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
