import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.assetRoute,
    required this.title,
  });
  final String assetRoute;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.r,
      width: 100.r,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              assetRoute,
            ),
          ),
          SizedBox(height: 10.h),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(fontSize: 14.h, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
