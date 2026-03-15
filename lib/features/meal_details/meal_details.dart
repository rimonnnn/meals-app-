import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/spacing_widgets.dart';
import 'package:meals_app/features/home_screen/models/meal_model.dart';
import 'package:meals_app/features/meal_details/widgets/time_and_rate.dart';
import 'package:meals_app/features/meal_details/widgets/top_meal_details_screen.dart';

class MealDetails extends StatelessWidget {
  final Meal meal;
  const MealDetails({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopMealDetailsScreen(meal: meal),
              HeightSpace(16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.sp),
                child: Text(
                  meal.name,
                  style: AppTextStyle.black16Medium.copyWith(fontSize: 24.sp),
                ),
              ),
              HeightSpace(21),
              TimeAndRate(meal: meal),
              HeightSpace(36),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    HeightSpace(24),
                    Text("Description", style: AppTextStyle.black16Medium),
                    HeightSpace(8),
                    Text(meal.descrebtion, style: AppTextStyle.grey14Regular),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
