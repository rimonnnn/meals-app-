import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_colors.dart';

class Dvider extends StatelessWidget {
  const Dvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
                      color: AppColors.greyColor.withAlpha(35),
                      thickness: 2.sp,
                    );
  }
}