import 'package:flutter/material.dart';

class SetupGoalsPage extends StatelessWidget {
  const SetupGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup Goals'),
      ),
      body: const Center(
        child: Text('This is the Setup Goals Page'),
      ),
    );
  }
}
