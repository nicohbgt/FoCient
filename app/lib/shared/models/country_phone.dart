import 'package:flutter/material.dart';

class CountryPhone {
  final String name;

  final String code;

  final String iso;

  final String flag;

  const CountryPhone({
    required this.name,
    required this.code,
    required this.iso,
    required this.flag,
  });

  factory CountryPhone.fromJson(
    Map<String, dynamic> json,
  ) {
    return CountryPhone(
      name: json["name"],
      code: json["code"],
      iso: json["iso"],
      flag: json["flag"],
    );
  }
}
