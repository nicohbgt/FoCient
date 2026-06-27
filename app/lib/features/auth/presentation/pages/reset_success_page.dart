import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import '../../../../shared/widgets/app_button.dart';

class ResetSuccessPage extends StatelessWidget {
  const ResetSuccessPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            AppSpacing.s24,
          ),
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: AppColors.success.c100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  size: 72,
                  color: AppColors.success.c500,
                ),
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              Text(
                'Password Reset Successful',
                textAlign: TextAlign.center,
                style: AppTypography.headlineMedium,
              ),
              const SizedBox(
                height: AppSpacing.s12,
              ),
              Text(
                'Your password has been successfully updated. You can now sign in using your new password.',
                textAlign: TextAlign.center,
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.neutral.c500,
                ),
              ),
              const Spacer(),
              AppButton(
                label: 'Back to Sign In',
                fullWidth: true,
                onPressed: () {
                  context.go(
                    AppRoutes.signIn,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
