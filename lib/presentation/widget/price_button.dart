import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywall/generated/l10n.dart';
import 'package:paywall/presentation/localization/localization_widget.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        LocalizationWidget.of(context)!.localizationService.setLocale(const Locale('de'));
      },
      child: Container(
        padding: EdgeInsets.all(5.r),
        height: 67.h,
        width: 320.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: const Color(0xff8A39AC),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: const Color(0xff6B0496),
          ),
          child: Center(
              child: Text(
            S.of(context).letsGo,
            style: TextStyle(
              fontSize: 15.h,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
