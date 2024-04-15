import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';


void showCallCentersModal(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
    ),
    backgroundColor: Colors.white,
    context: context,
    builder: (context) {
      final List<String> contacts = ['+7 (727) 332 40-20 ', '+7 (727) 331 11-25'];
      return Container(
        height: 1.sh / 3,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12).r),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.r),
                Center(
                  child: Container(
                    width: 40.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.textGrey,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                ),
                SizedBox(height: 20.r),
                Text(
                  S.of(context).call_center,
                  style: ts(TS.s24w700).copyWith(color: Colors.black),
                ),
                SizedBox(height: 20.r),
                ...contacts
                  .map((e) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      enableFeedback: true,
                      title: Text(
                          e,
                          style: ts(TS.s14w400)
                            .copyWith(color: Colors.black),
                        ),
                      trailing: IconButton(
                        onPressed: () async {
                          await _makePhoneCall(e);
                        },
                        icon: SvgPicture.asset(Assets.svg.phone24),
                      ),
                    ))
                  .toList(),
                SizedBox(height: 50.r),
              ],
            ),
          ),
        ),
      );
    },
  );
}
Future<void> _makePhoneCall(String phoneNumber) async {
  canLaunchUrl(Uri.parse('tel:$phoneNumber')).then((bool result) {
    if (result) {
      launchUrl(Uri.parse('tel:$phoneNumber'),
          mode: LaunchMode.platformDefault);
    } else {}
  });
}