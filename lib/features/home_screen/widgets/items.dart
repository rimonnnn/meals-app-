// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/spacing_widgets.dart';

class Items extends StatelessWidget {
  final String name;
  final String urlImage;
  final String rate;
  final String clock;
  final Function()? onTap;
  const Items({
    super.key,
    required this.name,
    required this.urlImage,
    required this.rate,
    required this.clock,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.sp),

        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: urlImage,
              width: 140.w,
              height: 100.h,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) =>
                  Icon(Icons.error, color: Colors.red),
            ),
            const HeightSpace(8),
            Text(name, style: AppTextStyle.black16Medium, maxLines: 1),
            const HeightSpace(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16.sp,
                      color: AppColors.primaryColor,
                    ),
                    WidthSpace(4),
                    Text(rate),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timelapse_sharp,
                      size: 16.sp,
                      color: AppColors.primaryColor,
                    ),
                    WidthSpace(4),
                    Text(clock),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
