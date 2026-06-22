import 'package:flutter/material.dart';

class GoalFormPage extends StatelessWidget {
  const GoalFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goal Form'),
      ),
      body: const Center(
        child: Text('This is the Goal Form Page'),
      ),
    );
  }
}
