import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_bottom_sheet.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(20).r,
        height: 48.r,
        width: 1.sw,
        child: CustomButton(
            onPressed: () {
              context.router.popForced();
            },
            buttonText:       S.of(context).back_to_home,
            isActive: true),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.png.succes.path),
            SizedBox(
              height: 20.r,
            ),
            Center(
                child: Text(
              S.of(context).success_pay_details,
              style: ts(TS.s24w700).copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }
}
