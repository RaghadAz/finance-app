import 'package:finance_app/features/auth/widgets/custom_icons_button.dart';
import 'package:flutter/material.dart';

import '../../../core/styling/app_assets.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconsButton(iconPath: AppAssets.facebook, onTap: () {}),
        CustomIconsButton(iconPath: AppAssets.google, onTap: () {}),
        CustomIconsButton(iconPath: AppAssets.apple, onTap: () {}),
      ],
    );
  }
}
