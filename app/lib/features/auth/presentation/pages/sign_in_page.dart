import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/input/app_checkbox.dart';
import '../../../../shared/widgets/input/app_password_field.dart';
import '../../../../shared/widgets/input/app_text_field.dart';

import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({
    super.key,
  });

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  bool rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

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
              const SizedBox(
                height: AppSpacing.s24,
              ),
              const AuthHeader(
                title: 'Welcome Back',
                subtitle:
                    'Sign in to continue managing your productivity with FoCient.',
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              AppTextField(
                controller: _emailController,
                label: 'Email',
              ),
              const SizedBox(
                height: AppSpacing.s16,
              ),
              AppPasswordField(
                controller: _passwordController,
                label: 'Password',
              ),
              const SizedBox(
                height: AppSpacing.s12,
              ),
              Row(
                children: [
                  Expanded(
                    child: AppCheckbox(
                      value: rememberMe,
                      label: 'Remember Me',
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value;
                        });
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(
                        AppRoutes.forgotPassword,
                      );
                    },
                    child: const Text(
                      'Forgot Password?',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSpacing.s24,
              ),
              AppButton(
                label: 'Sign In',
                fullWidth: true,
                onPressed: () {
                  context.go(
                    AppRoutes.dashboard,
                  );
                },
              ),
              const SizedBox(
                height: AppSpacing.s24,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: Text(
                      'OR',
                    ),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSpacing.s24,
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    48,
                  ),
                ),
                onPressed: () {
                  // TODO:
                  // Google Sign In
                },
                icon: const Icon(
                  Icons.g_mobiledata,
                ),
                label: const Text(
                  'Continue with Google',
                ),
              ),
              const SizedBox(
                height: AppSpacing.s24,
              ),
              AuthFooter(
                text: "Don't have an account?",
                buttonText: 'Sign Up',
                onPressed: () {
                  context.go(
                    AppRoutes.signUp,
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
