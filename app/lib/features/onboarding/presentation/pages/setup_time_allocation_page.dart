import 'package:flutter/material.dart';

class SetupTimeAllocationPage extends StatelessWidget {
  const SetupTimeAllocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup Time Allocation'),
      ),
      body: const Center(
        child: Text('This is the Setup Time Allocation Page'),
      ),
    );
  }
}
