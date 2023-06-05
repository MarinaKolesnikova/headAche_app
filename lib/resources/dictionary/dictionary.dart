import 'package:flutter/material.dart';

import 'data/dictionary_data.dart';

class Dictionary {
  const Dictionary({
    required this.languageCode,
    required this.json,
  });

  factory Dictionary.empty() => Dictionary(languageCode: '', json: {});

  final String languageCode;
  final Map<String, dynamic> json;

  Locale get locale => Locale(languageCode);

  DictionaryData get data => DictionaryData.fromJson(json);

  bool get isEmpty => this == Dictionary.empty();
}
