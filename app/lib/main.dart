import 'package:flutter/material.dart';

import 'app/router/app_router.dart';

void main() {
  runApp(const FoCientApp());
}

class FoCientApp extends StatelessWidget {
  const FoCientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
    );
  }
}
