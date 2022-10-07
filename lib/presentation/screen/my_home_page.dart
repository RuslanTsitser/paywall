import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywall/generated/l10n.dart';
import 'package:paywall/presentation/assets/app_assets.dart';
import 'package:paywall/presentation/widget/item_widget.dart';
import 'package:paywall/presentation/widget/price_button.dart';
import 'package:paywall/presentation/widget/price_container.dart';
import 'package:paywall/presentation/widget/terms_buttons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.home),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SizedBox.expand(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AppAssets.cancel,
                        width: 10.r,
                        height: 10.r,
                      ),
                      Text(
                        S.of(context).restore,
                        style: TextStyle(fontSize: 12.h),
                      )
                    ],
                  ),
                  SizedBox(height: 50.h),
                  FittedBox(
                    child: Text(
                      S.of(context).unlockAllFeatures,
                      style: TextStyle(
                        fontSize: 24.h,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      S.of(context).buildYourPerfectMorningRoutine,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.h,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemWidget(
                            assetRoute: AppAssets.fitness,
                            title: S.of(context).fitness,
                          ),
                          ItemWidget(
                            assetRoute: AppAssets.visualization,
                            title: S.of(context).visualization,
                          ),
                          ItemWidget(
                            assetRoute: AppAssets.meditations,
                            title: S.of(context).meditations,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemWidget(
                            assetRoute: AppAssets.reading,
                            title: S.of(context).reading,
                          ),
                          ItemWidget(
                            assetRoute: AppAssets.notes,
                            title: S.of(context).notes,
                          ),
                          ItemWidget(
                            assetRoute: AppAssets.affirmations,
                            title: S.of(context).affirmations,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  const PriceContainer(),
                  const Spacer(),
                  const PriceButton(),
                  SizedBox(height: 24.h),
                  const TermsButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
