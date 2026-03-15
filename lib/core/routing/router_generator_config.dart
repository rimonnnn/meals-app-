import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routing/app_routes.dart';
import 'package:meals_app/features/add_meals/add_meals.dart';
import 'package:meals_app/features/home_screen/home_screen.dart';
import 'package:meals_app/features/home_screen/models/meal_model.dart';
import 'package:meals_app/features/meal_details/meal_details.dart';
import 'package:meals_app/features/onboarding/on_boarding_screen.dart';

class RouterGeneratorConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBordingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBordingScreen,
        name: AppRoutes.onBordingScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.homeScreen,
        name: AppRoutes.homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.addMealsScreen,
        name: AppRoutes.addMealsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const AddMeals();
        },
      ),
      GoRoute(
        path: AppRoutes.mealsDetailsScreen,
        name: AppRoutes.mealsDetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          Meal meal = state.extra as Meal;
          return MealDetails(
            meal: meal,
          );
        },
      ),
    ],
  );
}
