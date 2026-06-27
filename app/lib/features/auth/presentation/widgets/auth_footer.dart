import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_typography.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  });

  final String text;
  final String buttonText;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTypography.bodyMedium,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.primary.c500,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
