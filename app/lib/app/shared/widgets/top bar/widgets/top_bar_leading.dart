import 'package:flutter/material.dart';

class TopBarLeading extends StatelessWidget {
  const TopBarLeading({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: child,
    );
  }
}
