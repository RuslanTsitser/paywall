import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywall/generated/l10n.dart';
import 'package:paywall/presentation/localization/localization_widget.dart';
import 'package:paywall/presentation/widget/guard_widget.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        LocalizationWidget.of(context)!.localizationService.setLocale(
              const Locale('ru'),
            );
      },
      child: Container(
        height: 170.h,
        width: 320.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '2.91 USD',
                  style: TextStyle(
                    fontSize: 29.h,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff6B0496),
                  ),
                ),
                Text(
                  '/${S.of(context).month}',
                  style: TextStyle(
                    fontSize: 24.h,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff6B0496),
                  ),
                ),
              ],
            ),
            Text(
              S.of(context).billedEvery12Months,
              style: TextStyle(
                fontSize: 18.h,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12.h),
            const GuardWidget(),
          ],
        ),
      ),
    );
  }
}
