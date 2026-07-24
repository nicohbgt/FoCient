import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class WelcomeLegalText extends StatelessWidget {
  const WelcomeLegalText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppTypography.bodySmall.copyWith(
            color: AppColors.neutral.c500,
          ),
          children: [
            const TextSpan(
              text: 'By continuing you agree to our ',
            ),
            WidgetSpan(
              child: GestureDetector(
                onTap: () {
                  // TODO:
                  // Navigate Privacy Policy
                },
                child: Text(
                  'Privacy Policy',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.primary.c500,
                  ),
                ),
              ),
            ),
            const TextSpan(
              text: ' and ',
            ),
            WidgetSpan(
              child: GestureDetector(
                onTap: () {
                  // TODO:
                  // Navigate Terms of Service
                },
                child: Text(
                  'Terms of Service',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.primary.c500,
                  ),
                ),
              ),
            ),
            const TextSpan(
              text: '.',
            ),
          ],
        ),
      ),
    );
  }
}
