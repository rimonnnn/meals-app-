import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/routing/router_generator_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: RouterGeneratorConfig.goRouter,
          title: 'Meals App',
          debugShowCheckedModeBanner: false,
        );
      },
      child: Scaffold(),
    );
  }
}
