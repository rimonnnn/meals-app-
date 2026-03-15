import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/widgets/spacing_widgets.dart';
import 'package:meals_app/features/home_screen/models/meal_model.dart';

class TimeAndRate extends StatelessWidget {
  final Meal meal;
  const TimeAndRate({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        width: 327.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withAlpha(25),
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.timelapse_sharp,
                    size: 16.sp,
                    color: AppColors.primaryColor,
                  ),
                  WidthSpace(4),
                  Text(meal.time),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 16.sp, color: AppColors.primaryColor),
                  WidthSpace(4),
                  Text(meal.rate.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
