import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../../../../shared/widgets/button/app_button.dart';
import '../../../../shared/widgets/password field/app_password_field.dart';
import '../../../../shared/widgets/text field/app_text_field.dart';

import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    super.key,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _fullNameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _navigateToSetupGoals(BuildContext context) {
    context.go(
      AppRoutes.setupGoals,
    );
  }

  void _navigateToSignIn(BuildContext context) {
    context.go(
      AppRoutes.signIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s20,
            vertical: AppSpacing.s24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSpacing.s24,
              ),
              const AuthHeader(
                title: "Let's start your journey",
                subtitle:
                    'Create your FoCient account to start planning smarter.',
              ),
              const SizedBox(
                height: AppSpacing.s40,
              ),
              AppTextField(
                controller: _fullNameController,
                label: 'Full Name',
                hintText: 'Enter your full name',
              ),
              const SizedBox(
                height: AppSpacing.s20,
              ),
              AppTextField(
                controller: _emailController,
                label: 'Email',
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: AppSpacing.s20,
              ),
              AppPasswordField(
                controller: _passwordController,
                label: 'Password',
                hintText: 'Enter your password',
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              AppButton(
                label: 'Create Account',
                fullWidth: true,
                onPressed: () => _navigateToSetupGoals(
                  context,
                ),
              ),
              const SizedBox(
                height: AppSpacing.s20,
              ),
              AuthFooter(
                text: 'Already have an account?',
                buttonText: 'Sign In',
                onPressed: () => _navigateToSignIn(
                  context,
                ),
              ),
              const SizedBox(
                height: AppSpacing.s24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
