import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:paywall/generated/l10n.dart';

class LocalizationService with ChangeNotifier {
  LocalizationService() {
    _locale = localeList.first;
  }

  late Locale _locale;

  Locale get locale => _locale;

  void setLocale(Locale newLocale) {
    if (_locale == newLocale) return;
    _locale = newLocale;
    notifyListeners();
  }

  Iterable<LocalizationsDelegate<dynamic>> get localizationsDelegates => [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];

  Iterable<Locale> get supportedLocales => S.delegate.supportedLocales;

  List<Locale> get localeList => supportedLocales.toList();
}
