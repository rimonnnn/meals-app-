import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_text_style.dart';

class YourFood extends StatelessWidget {
  const YourFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: EdgeInsets.only(left: 16.sp),
                    child: Text("Your Food", style: AppTextStyle.black16Medium),
                  );
  }
}