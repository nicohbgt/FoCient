import 'package:flutter/services.dart';
import 'dart:convert';

class CountryService {
  static Future<List<CountryPhone>> load() async {
    final jsonString = await rootBundle.loadString(
      'assets/data/countries.json',
    );

    final jsonData = jsonDecode(jsonString);

    return jsonData
        .map<CountryPhone>(
          (e) => CountryPhone.fromJson(e),
        )
        .toList();
  }
}
