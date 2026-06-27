import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/input/app_password_field.dart';

import '../widgets/auth_header.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({
    super.key,
  });

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _newPasswordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
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
                title: 'Reset Password',
                subtitle: 'Create a new password for your FoCient account.',
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              AppPasswordField(
                controller: _newPasswordController,
                label: 'New Password',
              ),
              const SizedBox(
                height: AppSpacing.s16,
              ),
              AppPasswordField(
                controller: _confirmPasswordController,
                label: 'Confirm Password',
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              AppButton(
                label: 'Reset Password',
                fullWidth: true,
                onPressed: () {
                  context.go(
                    AppRoutes.resetSuccess,
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
