import 'package:flutter/material.dart';

class AppTimeInput extends StatelessWidget {
  const AppTimeInput({
    super.key,
    this.value,
    required this.onTap,
  });

  final int? value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 58,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffCBD5E1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          value == null ? "--" : value!.toString().padLeft(2, '0'),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
