import 'package:flutter/material.dart';

class ChooseWorkstylePage extends StatelessWidget {
  const ChooseWorkstylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Workstyle'),
      ),
      body: const Center(
        child: Text('This is the Choose Workstyle Page'),
      ),
    );
  }
}
