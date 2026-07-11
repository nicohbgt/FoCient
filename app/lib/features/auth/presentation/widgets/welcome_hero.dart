import 'package:flutter/material.dart';

class WelcomeHero extends StatelessWidget {
  const WelcomeHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/welcome.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
