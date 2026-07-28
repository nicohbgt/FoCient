import 'package:flutter/material.dart';

import '../../../../app/shared/widgets/button/app_button.dart';
import '../widgets/welcome_footer.dart';
import '../widgets/welcome_logo.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(flex: 2),
              const WelcomeLogo(),
              const Spacer(flex: 3),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: 'Get Started',
                  onPressed: () {
                    // TODO: Navigate to Sign In
                  },
                ),
              ),
              const SizedBox(height: 48),
              const WelcomeFooter(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
