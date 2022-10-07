// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Restore`
  String get restore {
    return Intl.message(
      'Restore',
      name: 'restore',
      desc: '',
      args: [],
    );
  }

  /// `Unlock all features`
  String get unlockAllFeatures {
    return Intl.message(
      'Unlock all features',
      name: 'unlockAllFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Build Your Perfect Morning Routine`
  String get buildYourPerfectMorningRoutine {
    return Intl.message(
      'Build Your Perfect Morning Routine',
      name: 'buildYourPerfectMorningRoutine',
      desc: '',
      args: [],
    );
  }

  /// `Secured With Apple Store`
  String get securedWithAppleStore {
    return Intl.message(
      'Secured With Apple Store',
      name: 'securedWithAppleStore',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Anytime`
  String get cancelAnytime {
    return Intl.message(
      'Cancel Anytime',
      name: 'cancelAnytime',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Term Of Use`
  String get termOfUse {
    return Intl.message(
      'Term Of Use',
      name: 'termOfUse',
      desc: '',
      args: [],
    );
  }

  /// `Let's Go!`
  String get letsGo {
    return Intl.message(
      'Let\'s Go!',
      name: 'letsGo',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Billed Every 12 Months`
  String get billedEvery12Months {
    return Intl.message(
      'Billed Every 12 Months',
      name: 'billedEvery12Months',
      desc: '',
      args: [],
    );
  }

  /// `Fitness`
  String get fitness {
    return Intl.message(
      'Fitness',
      name: 'fitness',
      desc: '',
      args: [],
    );
  }

  /// `Affirmations`
  String get affirmations {
    return Intl.message(
      'Affirmations',
      name: 'affirmations',
      desc: '',
      args: [],
    );
  }

  /// `Visualization`
  String get visualization {
    return Intl.message(
      'Visualization',
      name: 'visualization',
      desc: '',
      args: [],
    );
  }

  /// `Meditations`
  String get meditations {
    return Intl.message(
      'Meditations',
      name: 'meditations',
      desc: '',
      args: [],
    );
  }

  /// `Reading`
  String get reading {
    return Intl.message(
      'Reading',
      name: 'reading',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de', countryCode: 'DE'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
