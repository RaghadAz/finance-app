import 'package:finance_app/core/routing/router_generation_config.dart';
import 'package:finance_app/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: RouterGeneration.mainRouterInOurApp,
        );
      },
    );
  }
}
