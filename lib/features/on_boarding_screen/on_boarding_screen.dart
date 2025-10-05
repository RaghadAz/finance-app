import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/routing/router_generation_config.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppAssets.onBoard,
              height: 570.h,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            HeightSpace(height: 21),
            PrimaryButtonWidget(
              buttonText: "Login ",
              onpressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              },
            ),

            HeightSpace(height: 15),

            PrimaryOutLinedButtonWidget(
              buttonText: "Register",
              onpressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
              },
            ),
            HeightSpace(height: 46),
            Text("Continue as a guest", style: AppStyles.Text15),
            HeightSpace(height: 30),
          ],
        ),
      ),
    );
  }
}
