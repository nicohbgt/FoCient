import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../../../shared/widgets/app_button.dart';

class WelcomePrimaryAction extends StatelessWidget {
  const WelcomePrimaryAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: 'Get Started',
      fullWidth: true,
      onPressed: () {
        context.go(
          AppRoutes.signUp,
        );
      },
    );
  }
}
