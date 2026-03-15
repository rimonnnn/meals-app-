import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routing/app_routes.dart';
import 'package:meals_app/core/styles/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(AppRoutes.addMealsScreen);
      },
      child: Container(
        width: 55.w,
        height: 55.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primaryColor, width: 2.sp),
        ),
        child: Icon(Icons.add, size: 35, color: AppColors.primaryColor),
      ),
    );
  }
}
