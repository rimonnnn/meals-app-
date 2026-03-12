import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/app_assets/app_assets.dart';
import 'package:meals_app/core/routing/app_routes.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/spacing_widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<String> titles = [
    "Save Your Meals Ingredient",
    "Use Our App The Best Choice",
    "Our App Your Ultimate Choice",
  ];
  List<String> descrebtions = [
    "Add Your Meals and its Ingredients and we will save it for you",
    "the best choice for your kitchen do not hesitate",
    "All the best restaurants and their top menus are ready for you",
  ];
  int currentIndex = 0;

  CarouselSliderController carouselController = CarouselSliderController();
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
            height: 420.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48.r),
              color: AppColors.primaryColor.withValues(alpha: 0.9),
            ),
            child: Padding(
              padding: EdgeInsets.all(32.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 220.h,
                    child: CarouselSlider(
                      carouselController: carouselController,
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: 200,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),

                      items: List.generate(titles.length, (index) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  titles[index],
                                  style: AppTextStyle.onBoardingTitleStyle,
                                ),
                                HeightSpace(16),
                                Text(
                                  textAlign: TextAlign.center,

                                  descrebtions[index],
                                  style:
                                      AppTextStyle.onBoardingDescribtionStyle,
                                ),
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  HeightSpace(1),
                  Center(
                    child: Material(
                      color: Colors.transparent,
                      child: DotsIndicator(
                        dotsCount: titles.length,
                        position: currentIndex.toDouble(),
                        decorator: DotsDecorator(
                          size: Size(24.w, 6.h),
                          activeSize: Size(24.w, 6.h),
                          activeColor: AppColors.whiteColor,
                          color: Color(0xffC2C2C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                        ),
                        onTap: (index) {
                          carouselController.animateToPage(index);

                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  const Spacer(),
                  currentIndex >= 2
                      ? Material(
                          color: Colors.transparent,
                          child: Container(
                            width: 62.sp,
                            height: 62.sp,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                GoRouter.of(
                                  context,
                                ).pushReplacementNamed(AppRoutes.homeScreen);
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                size: 28,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        )
                      : Material(
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  GoRouter.of(
                                    context,
                                  ).pushReplacementNamed(AppRoutes.homeScreen);
                                },

                                child: Text(
                                  "Skip",
                                  style: AppTextStyle.white14SemiBold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if (currentIndex < 2) {
                                    currentIndex++;
                                    carouselController.animateToPage(
                                      currentIndex,
                                    );
                                    setState(() {});
                                  }
                                },
                                child: Text(
                                  "Next",
                                  style: AppTextStyle.white14SemiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
