import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/features/auth/create_new_password.dart';
import 'package:finance_app/features/auth/forgot_password.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/password_changed.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterGeneration {
  static GoRouter mainRouterInOurApp = GoRouter(
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text("This is the error page"))),
    initialLocation: AppRoutes.onBoardingScreen,
    initialExtra: AppRoutes.onBoardingScreen,

    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: AppRoutes.forgotPassword,
        builder: (context, state) => ForgotPassword(),
      ),
      GoRoute(
        path: AppRoutes.createNewPassword,
        name: AppRoutes.createNewPassword,
        builder: (context, state) => CreateNewPassword(),
      ),
      GoRoute(
        path: AppRoutes.passwordChanged,
        name: AppRoutes.passwordChanged,
        builder: (context, state) => PasswordChanged(),
      ),
    ],
  );
}
