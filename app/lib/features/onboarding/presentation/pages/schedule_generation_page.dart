import 'package:flutter/material.dart';

class ScheduleGenerationPage extends StatelessWidget {
  const ScheduleGenerationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule Generation'),
      ),
      body: const Center(
        child: Text('This is the Schedule Generation Page'),
      ),
    );
  }
}
