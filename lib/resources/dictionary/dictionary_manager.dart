import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:migr_proj/config/modules/injection_config.dart';

import './dictionary.dart';
import './data/dictionary_data.dart';

export 'dictionary.dart';
export 'data/dictionary_data.dart';

DictionaryManager get dictionaryManager => getIt<DictionaryManager>();

class DictionaryManager {
  DictionaryManager(List<Dictionary> dictionaries)
      : assert(dictionaries.isNotEmpty, throw ('you didn\'t add dictionaries!')),
        _dictionaries = dictionaries;

  final List<Dictionary> _dictionaries;

  int _selectedIndex = 0;

  Dictionary get getSelectedDictionary => _dictionaries[_selectedIndex];

  DictionaryData get getSelectedData => getSelectedDictionary.data;

  Locale get selectedLocale {
    try {
      return _dictionaries[_selectedIndex].locale;
    } catch (e) {
      return _dictionaries[0].locale;
    }
  }

  String get languageCode => selectedLocale.languageCode;

  List<Locale> get supportedLocales => _dictionaries.map((e) => e.locale).toList();

  List<LocalizationsDelegate<dynamic>> get getLocalizationDelegates {
    return const [
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  bool containsLocale(Locale locale) => _dictionaries.any((element) => element.locale == locale);

  void changeLanguage(Locale locale) {
    final int newIndex = _dictionaries.indexWhere((element) => element.languageCode == locale.languageCode);

    if (newIndex < 0) return;

    _selectedIndex = newIndex;
  }

  void changeLanguageByCode(String languageCode) => changeLanguage(Locale(languageCode));
}
