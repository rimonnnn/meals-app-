import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/widgets/back_buttom_black_widget.dart';
import 'package:meals_app/features/home_screen/models/meal_model.dart';

class TopMealDetailsScreen extends StatelessWidget {
  final Meal meal;
  const TopMealDetailsScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: CachedNetworkImage(
              imageUrl: meal.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 327.h,
            ),
          ),
        ),
        Positioned(
          top: 30.sp,
          left: 20.sp,
          child: BackButtomBlackWidget(iconColor: Colors.white),
        ),
      ],
    );
  }
}
