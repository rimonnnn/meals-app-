import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routing/app_routes.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/spacing_widgets.dart';
import 'package:meals_app/features/home_screen/data/dp_helper/dp_helper.dart';
import 'package:meals_app/features/home_screen/models/meal_model.dart';
import 'package:meals_app/features/home_screen/widgets/custom_floating_action_button.dart';

import 'package:meals_app/features/home_screen/widgets/custom_top_home.dart';
import 'package:meals_app/features/home_screen/widgets/items.dart';
import 'package:meals_app/features/home_screen/widgets/your_food.dart';

DatabaseHelper dbHelper = DatabaseHelper.instance;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTopHome(),
            HeightSpace(25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  YourFood(),
                  HeightSpace(25),
                  Expanded(
                    child: FutureBuilder(
                      future: dbHelper.getMeals(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                            ),
                          );
                        } else if (snapshot.hasData) {
                          return GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 22,
                                ),
                            itemCount: snapshot.data!.length,

                            itemBuilder: (context, index) {
                              Meal meal = snapshot.data![index];
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 25.sp,
                                ),
                                child: Items(
                                  name: meal.name,
                                  urlImage: meal.imageUrl,
                                  rate: meal.rate.toString(),
                                  clock: meal.time,

                                  onTap: () {
                                    GoRouter.of(context).pushNamed(
                                      AppRoutes.mealsDetailsScreen,
                                      extra: meal,
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Center(child: Text("${snapshot.error}"));
                        } else if (snapshot.hasData &&
                            snapshot.data!.isNotEmpty) {
                          return Center(
                            child: Text(
                              "No meals yet",
                              style: AppTextStyle.onBoardingDescribtionStyle,
                            ),
                          );
                        }
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}
