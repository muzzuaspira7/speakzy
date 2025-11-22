import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/core/theme/app_colors.dart';
import 'package:speakzy/core/theme/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text("Profile", style: AppTextStyles.heading()),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// PROFILE IMAGE
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(80.r),
                  child: Image.network(
                    "https://i.pravatar.cc/300",
                    height: 120.h,
                    width: 120.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 6,
                  bottom: 6,
                  child: Container(
                    width: 18.w,
                    height: 18.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 12.h),

            /// NAME + DETAILS
            Text("Muzammil", style: AppTextStyles.heading()),
            SizedBox(height: 5.h),
            Text("Male • India 🇮🇳",
                style: AppTextStyles.bodyMedium().copyWith(
                  color: Colors.grey.shade600,
                )),

            SizedBox(height: 15.h),

            /// STATS ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _statItem("⭐ 4.9", "Rating"),
                _statItem("🎙 12k+", "Minutes"),
                _statItem("👥 210", "Followers"),
              ],
            ),

            SizedBox(height: 20.h),

            /// ABOUT SECTION
            Align(
              alignment: Alignment.centerLeft,
              child: Text("About Me",
                  style:
                      AppTextStyles.heading(fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 6.h),
            Text(
              "I love practicing English and meeting new people. "
              "Excited to join more conversations and improve together!",
              style: AppTextStyles.bodyMedium(),
              textAlign: TextAlign.start,
            ),

            SizedBox(height: 20.h),

            /// INTERESTS
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Interests",
                  style:
                      AppTextStyles.heading(fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 10.h),

            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: [
                _chip("English Speaking"),
                _chip("Movies"),
                _chip("Travel"),
                _chip("Tech"),
                _chip("Friends"),
                _chip("Study"),
              ],
            ),

            SizedBox(height: 25.h),

            /// TABS - ACTIVITY & REVIEWS
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: AppColors.primaryBlue,
                    labelStyle: AppTextStyles.bodyMedium(),
                    tabs: const [
                      Tab(text: "Activity"),
                      Tab(text: "Reviews"),
                    ],
                  ),

                  SizedBox(
                    height: 250.h,
                    child: TabBarView(
                      children: [
                        _activityTab(),
                        _reviewTab(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20.h),

            /// INVITE BUTTON
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Center(
                child: Text(
                  "Invite to Talk",
                  style: AppTextStyles.bodyMedium(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _statItem(String value, String label) {
    return Column(
      children: [
        Text(value, style: AppTextStyles.bodyMedium()),
        SizedBox(height: 4.h),
        Text(label,
            style: AppTextStyles.bodySmall()
                .copyWith(color: Colors.grey.shade600)),
      ],
    );
  }

  Widget _chip(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        text,
        style: AppTextStyles.bodySmall()
            .copyWith(color: AppColors.primaryBlue, fontSize: 12.sp),
      ),
    );
  }

  Widget _activityTab() {
    return ListView(
      padding: EdgeInsets.only(top: 12.h),
      children: [
        _activityTile("Joined: Morning Talk Room"),
        _activityTile("Joined: English Practice Live"),
        _activityTile("Joined: Grammar & Fun Chat"),
      ],
    );
  }

  Widget _activityTile(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          Icon(Icons.mic, size: 20.sp, color: AppColors.primaryBlue),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(text, style: AppTextStyles.bodyMedium()),
          )
        ],
      ),
    );
  }

  Widget _reviewTab() {
    return ListView(
      padding: EdgeInsets.only(top: 12.h),
      children: [
        _reviewItem("Great speaker! Friendly and confident.", 5),
        _reviewItem("Good communication, helpful.", 4),
      ],
    );
  }

  Widget _reviewItem(String text, int stars) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < stars ? Icons.star : Icons.star_border,
                size: 18.sp,
                color: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Text(text, style: AppTextStyles.bodyMedium()),
        ],
      ),
    );
  }
}
