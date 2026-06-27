import 'dart:convert';

import 'package:flutter/services.dart';

import '../../shared/models/country_phone.dart';

class CountryService {
  static Future<List<CountryPhone>> load() async {
    final jsonString = await rootBundle.loadString(
      'lib/app/assets/data/countries.json',
    );

    final jsonData = jsonDecode(jsonString);

    return jsonData
        .map<CountryPhone>(
          (e) => CountryPhone.fromJson(e),
        )
        .toList();
  }
}
