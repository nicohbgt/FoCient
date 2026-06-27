import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/input/app_text_field.dart';

import '../widgets/auth_header.dart';
import '../widgets/auth_footer.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({
    super.key,
  });

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            AppSpacing.s24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSpacing.s12,
              ),
              const AuthHeader(
                title: 'Forgot Password',
                subtitle:
                    'Enter your email address and we will send you instructions to reset your password.',
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              AppTextField(
                controller: _emailController,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              AppButton(
                label: 'Send Reset Link',
                fullWidth: true,
                onPressed: () {
                  context.go(
                    AppRoutes.resetPassword,
                  );
                },
              ),
              const SizedBox(
                height: AppSpacing.s24,
              ),
              AuthFooter(
                text: 'Remember your password?',
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
