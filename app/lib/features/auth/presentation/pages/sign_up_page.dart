import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/input/app_checkbox.dart';
import '../../../../shared/widgets/input/app_password_field.dart';
import '../../../../shared/widgets/input/app_phone_field.dart';
import '../../../../shared/widgets/input/app_text_field.dart';

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

  final _phoneController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();

  bool agreeTerms = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            AppSpacing.s24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSpacing.s24),
              const AuthHeader(
                title: 'Create Account',
                subtitle:
                    'Create your FoCient account to start planning smarter.',
              ),
              const SizedBox(height: AppSpacing.s32),
              AppTextField(
                controller: _fullNameController,
                label: 'Full Name',
              ),
              const SizedBox(height: AppSpacing.s16),
              AppTextField(
                controller: _emailController,
                label: 'Email',
              ),
              const SizedBox(height: AppSpacing.s16),
              AppPhoneField(
                controller: _phoneController,
                label: 'Phone Number',
                countryName: 'Indonesia',
                dialCode: '+62',
                flag: '🇮🇩',
                onCountryTap: () {},
              ),
              const SizedBox(height: AppSpacing.s16),
              AppPasswordField(
                controller: _passwordController,
                label: 'Password',
              ),
              const SizedBox(height: AppSpacing.s16),
              AppPasswordField(
                controller: _confirmPasswordController,
                label: 'Confirm Password',
              ),
              const SizedBox(height: AppSpacing.s20),
              AppCheckbox(
                value: agreeTerms,
                label: 'I agree to the Terms of Service and Privacy Policy',
                onChanged: (value) {
                  setState(() {
                    agreeTerms = value;
                  });
                },
              ),
              const SizedBox(height: AppSpacing.s32),
              AppButton(
                label: 'Create Account',
                fullWidth: true,
                onPressed: () {
                  context.go(
                    AppRoutes.setupGoals,
                  );
                },
              ),
              const SizedBox(height: AppSpacing.s20),
              AuthFooter(
                text: 'Already have an account?',
                buttonText: 'Sign In',
                onPressed: () {
                  context.go(
                    AppRoutes.signIn,
                  );
                },
              ),
              const SizedBox(height: AppSpacing.s24),
            ],
          ),
        ),
      ),
    );
  }
}
