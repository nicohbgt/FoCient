import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    required this.text,
    required this.actionText,
    required this.onTap,
  });

  final String text;
  final String actionText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final typography = Theme.of(context).textTheme;

    return Text.rich(
      TextSpan(
        style: typography.bodyMedium,
        children: [
          TextSpan(text: "$text "),
          TextSpan(
            text: actionText,
            recognizer: TapGestureRecognizer()..onTap = onTap,
            style: typography.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
