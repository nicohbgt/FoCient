import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

import '../../../../shared/widgets/button/app_button.dart';

class WelcomeBottomPanel extends StatelessWidget {
  const WelcomeBottomPanel({
    super.key,
    required this.onGetStarted,
    this.onTermsPressed,
    this.onPrivacyPressed,
  });

  final VoidCallback onGetStarted;
  final VoidCallback? onTermsPressed;
  final VoidCallback? onPrivacyPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.s20,
        AppSpacing.s40,
        AppSpacing.s20,
        AppSpacing.s32,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(
            AppRadius.r16,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.neutral.c800.withValues(alpha: 0.85),
            AppColors.neutral.c900,
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Improve your life sustainability\nand keep productive with us!',
            textAlign: TextAlign.center,
            style: AppTypography.headlineMedium.copyWith(
              color: AppColors.neutral.c0,
            ),
          ),
          const SizedBox(
            height: AppSpacing.s32,
          ),
          SizedBox(
            width: 200,
            child: AppButton(
              label: 'Get Started',
              onPressed: onGetStarted,
            ),
          ),
          const SizedBox(
            height: AppSpacing.s24,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: AppTypography.bodySmall.copyWith(
                color: AppColors.neutral.c200,
                height: 1.5,
              ),
              children: [
                const TextSpan(
                  text: 'By signing up for delight, you agree to our ',
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: InkWell(
                    onTap: onTermsPressed,
                    child: Text(
                      'Terms of Service',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.neutral.c0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const TextSpan(
                  text: '.\nLearn how we process your data in our ',
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: InkWell(
                    onTap: onPrivacyPressed,
                    child: Text(
                      'Privacy Policy',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.neutral.c0,
                        fontWeight: FontWeight.w600,
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
        ],
      ),
    );
  }
}
