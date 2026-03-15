import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/app_assets/app_assets.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';

class CustomTopHome extends StatelessWidget {
  const CustomTopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAssets.topHomeImage, fit: BoxFit.fill),
        Positioned(
          top: 30.sp,
          left: 30.sp,
          child: Container(
            width: 190.w,
            height: 186.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withAlpha(20),
              borderRadius: BorderRadius.circular(48.r),
            ),
            padding: EdgeInsets.only(left: 8.sp),
            alignment: Alignment.center,
            child: Text(
              "Welcome Add A New Recipe",
              style: AppTextStyle.onBoardingTitleStyle,
            ),
          ),
        ),
      ],
    );
  }
}
