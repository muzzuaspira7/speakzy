import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/core/theme/app_colors.dart';
import 'features/auth/presentation/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Speakzy',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,

            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBlue),
          ),
          home: child,
        );
      },
      child: const LoginScreen(),
    );
  }
}
