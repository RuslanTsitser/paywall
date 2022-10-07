import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywall/generated/l10n.dart';

class TermsButtons extends StatelessWidget {
  const TermsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            S.of(context).privacyPolicy,
            style: TextStyle(
              fontSize: 12.h,
            ),
          ),
          SizedBox(width: 16.w),
          Text(
            S.of(context).termOfUse,
            style: TextStyle(
              fontSize: 12.h,
            ),
          ),
        ],
      ),
    );
  }
}
