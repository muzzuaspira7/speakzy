import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/core/theme/app_text_styles.dart';

import '../../core/theme/app_colors.dart';
class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      {"icon": Icons.home, "label": "Home"},
      {"icon": Icons.search, "label": "Search"},
      {"icon": Icons.add_circle_outline, "label": "Create"},
      {"icon": Icons.notifications, "label": "Notifications"},
      {"icon": Icons.person, "label": "Profile"},
    ];

    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final isSelected = index == currentIndex;
          return GestureDetector(
            onTap: () => onTap(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  items[index]["icon"] as IconData,
                  color: isSelected ? AppColors.primaryBlue : Colors.grey,
                  size:  24,
                ),
                SizedBox(height: 2.h),
                Text(
                  items[index]["label"] as String,
                  style: AppTextStyles.bodySmall(
                    color: isSelected ? AppColors.primaryBlue : Colors.grey,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
