import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/core/theme/app_colors.dart';
import 'package:speakzy/core/theme/app_text_styles.dart';

class UserListCard extends StatelessWidget {
  final String name;
  final String gender;
  final String imageUrl;
  final bool isOnline;
  final double rating;

  const UserListCard({
    super.key,
    required this.name,
    required this.gender,
    required this.imageUrl,
    required this.isOnline,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 2),
            color: Colors.black12,
          )
        ],
      ),
      child: Row(
        children: [
          /// profile image
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.r),
                child: Image.network(
                  imageUrl,
                  width: 55.w,
                  height: 55.w,
                  fit: BoxFit.cover,
                ),
              ),

              /// online indicator
              if (isOnline)
                Positioned(
                  right: 2,
                  bottom: 2,
                  child: Container(
                    width: 12.w,
                    height: 12.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),

          SizedBox(width: 12.w),

          /// name + gender + rating
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "🇮🇳 $name ",
                  
                  style: AppTextStyles.bodyMedium(),
                ),
                SizedBox(height: 4.h),
                Text(
                  "$gender • 1201 Talks",
                  style: AppTextStyles.bodySmall(),
                ),
                SizedBox(height: 4.h),
               
              Row(
  children: [
    ...List.generate(5, (index) {
      double current = index + 1;

      IconData icon;
      if (rating >= current) {
        icon = Icons.star;
      } else if (rating >= current - 0.5) {
        icon = Icons.star_half;
      } else {
        icon = Icons.star_border;
      }

      return Icon(
        icon,
        size: 16.sp,
        color: Colors.amber,
      );
    }),
  ],
)

              ],
            ),
          ),

          /// invite button
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: AppColors.primaryBlue,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              "Invite",
              style: AppTextStyles.bodySmall(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
