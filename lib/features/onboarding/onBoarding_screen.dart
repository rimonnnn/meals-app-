import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/app_assets/app_assets.dart';
import 'package:meals_app/core/styles/aoo_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.onBoardingBackground),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 24.sp,
          left: 32.sp,
          child: Container(
            width: 311.w,
            height: 400.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(48)),
              // ignore: deprecated_member_use
              color: AppColors.primaryColor.withOpacity(0.9),
            ),
          ),
        ),
      ],
    );
  }
}
