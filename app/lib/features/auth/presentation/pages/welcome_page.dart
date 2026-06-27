import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/app_button.dart';

import '../widgets/auth_footer.dart';
import '../widgets/auth_logo.dart';
import '../widgets/auth_title.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
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
              const AuthLogo(),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  'assets/images/welcome.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              const AuthTitle(
                title: 'Welcome to FoCient',
                subtitle:
                    'AI-powered productivity that helps you plan smarter, focus deeper, and achieve more.',
              ),
              const Spacer(),
              AppButton(
                label: 'Get Started',
                fullWidth: true,
                onPressed: () {
                  context.go(
                    AppRoutes.signUp,
                  );
                },
              ),
              const SizedBox(
                height: AppSpacing.s16,
              ),
              AuthFooter(
                text: 'Already have an account?',
                buttonText: 'Sign In',
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
