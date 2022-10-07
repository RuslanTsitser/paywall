import 'package:flutter/material.dart';
import 'package:paywall/presentation/localization/localization_service.dart';

class LocalizationWidget extends InheritedWidget {
  final LocalizationService localizationService;

  const LocalizationWidget({
    super.key,
    required Widget child,
    required this.localizationService,
  }) : super(child: child);

  static LocalizationWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocalizationWidget>();
  }

  @override
  bool updateShouldNotify(LocalizationWidget oldWidget) {
    return true;
  }
}
