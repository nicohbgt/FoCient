import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../widgets/welcome_bottom_panel.dart';
import '../widgets/welcome_header.dart';
import '../widgets/welcome_hero.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });

  void _navigateToSignUp(BuildContext context) {
    context.go(
      AppRoutes.signUp,
    );
  }

  void _navigateToTerms() {
    // TODO:
    // Navigate to Terms of Service
  }

  void _navigateToPrivacy() {
    // TODO:
    // Navigate to Privacy Policy
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral.c0,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Header
            const Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.s20,
                left: AppSpacing.s20,
                right: AppSpacing.s20,
              ),
              child: WelcomeHeader(),
            ),

            const SizedBox(
              height: AppSpacing.s24,
            ),

            // Hero Illustration
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.s20,
                ),
                child: Center(
                  child: WelcomeHero(),
                ),
              ),
            ),

            // Bottom Panel
            WelcomeBottomPanel(
              onGetStarted: () => _navigateToSignUp(
                context,
              ),
              onTermsPressed: _navigateToTerms,
              onPrivacyPressed: _navigateToPrivacy,
            ),
          ],
        ),
      ),
    );
  }
}
