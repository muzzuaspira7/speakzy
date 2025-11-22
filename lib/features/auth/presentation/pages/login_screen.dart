import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/common/widgets/gradient_button.dart';
import 'package:speakzy/common/widgets/textfield.dart';
import 'package:speakzy/core/constants/app_images.dart';
import 'package:speakzy/core/theme/app_colors.dart';
import 'package:speakzy/core/theme/app_text_styles.dart';

import '../widgets/social_icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SizedBox(height: 100.h,),
            Image.asset(AppImages.logo, height: 130.h, width: 130.w),
            SizedBox(height: 30.h),
            ReusableTextField(
              hint: "Enter Email",
              controller: TextEditingController(),
              prefix: Icon(
                Icons.email_outlined,
                color: AppColors.black.withOpacity(0.3),
              ),
            ),
            ReusableTextField(
              hint: "Enter Password",
              controller: TextEditingController(),
              prefix: Icon(
                Icons.lock_open_outlined,
                color: AppColors.black.withOpacity(0.3),
              ),
            ),

             ReusableTextField(
              hint: "Confirm Password",
              controller: TextEditingController(),
              prefix: Icon(
                Icons.lock_open_outlined,
                color: AppColors.black.withOpacity(0.3),
              ),
            ),
            Text(
              "Reset Password?",
              style: AppTextStyles.bodySmall(color: AppColors.primaryBlue),
            ),

            SizedBox(height: 20.h),
            GradientButton(title: "Sign in", onPressed: () {}),
            SizedBox(height: 50.h),

            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.black.withOpacity(0.2),
                    thickness: 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text("or", style: AppTextStyles.bodyMedium()),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.black.withOpacity(0.2),
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcons(
                  imageUrl:
                      "https://img.freepik.com/premium-vector/google-logo_1273375-1572.jpg?semt=ais_hybrid&w=740&q=80",
                ),
                SocialIcons(
                  imageUrl: "https://cdn-icons-png.freepik.com/512/0/747.png",
                ),
                SocialIcons(
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/500px-Facebook_Logo_%282019%29.png",
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have Account?", style: AppTextStyles.bodySmall(color: AppColors.black.withOpacity(0.4))),
                Text("  Sign up", style: AppTextStyles.bodySmallBold(),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
