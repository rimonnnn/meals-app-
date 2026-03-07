import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routing/app_routes.dart';
import 'package:meals_app/features/onboarding/onBoarding_screen.dart';

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
    ],
  );
}
