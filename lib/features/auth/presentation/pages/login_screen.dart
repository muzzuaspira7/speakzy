import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/common/widgets/gradient_button.dart';
import 'package:speakzy/common/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 100.h,),
            ReusableTextField(hint: "Enter Email", controller:  TextEditingController(), ),
            ReusableTextField(hint: "Enter Password", controller:  TextEditingController(),),

            SizedBox(height: 20.h,),
            GradientButton(title: "Sign in", onPressed: (){})
          ],
        ),
      )
    );
  }
}