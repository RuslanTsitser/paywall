import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywall/presentation/localization/localization_service.dart';
import 'package:paywall/presentation/localization/localization_widget.dart';
import 'package:paywall/presentation/screen/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final LocalizationService localizationService = LocalizationService();

  @override
  Widget build(BuildContext context) {
    return LocalizationWidget(
      localizationService: localizationService,
      child: ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(390, 844),
        builder: (context, widget) => AnimatedBuilder(
          animation: localizationService,
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: localizationService.locale,
            localizationsDelegates: localizationService.localizationsDelegates,
            supportedLocales: localizationService.supportedLocales,
            home: const MyHomePage(),
          ),
        ),
      ),
    );
  }
}
