import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';


void showContactsModal(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
    ),
    backgroundColor: Colors.white,
    context: context,
    builder: (context) {
      final List<String> contacts = ['101', '102', '103', '104'];
      return Container(
        height: 1.sh / 1.8,
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
                  S.of(context).emerge_contacts,
                  style: ts(TS.s24w700).copyWith(color: Colors.black),
                ),
                SizedBox(height: 20.r),
                ...contacts
                  .map((e) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      enableFeedback: true,
                      title: Text(
                        Formatter.getServiceName(e, context),
                        style: ts(TS.s12w400)
                          .copyWith(color: AppColors.textGrey),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5).r,
                        child: Text(
                          e,
                          style: ts(TS.s14w400)
                            .copyWith(color: Colors.black),
                        ),
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