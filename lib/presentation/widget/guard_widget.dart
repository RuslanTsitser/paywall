import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywall/generated/l10n.dart';
import 'package:paywall/presentation/assets/app_assets.dart';

class GuardWidget extends StatelessWidget {
  const GuardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      height: 68.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: const Color(0xffF8F8F8),
      ),
      padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 17.w),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.guard,
              height: 50.r,
              width: 50.r,
            ),
            SizedBox(width: 8.w),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).securedWithAppleStore,
                  style: TextStyle(
                    fontSize: 14.h,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  S.of(context).cancelAnytime,
                  style: TextStyle(
                    fontSize: 14.h,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff664EFF),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
