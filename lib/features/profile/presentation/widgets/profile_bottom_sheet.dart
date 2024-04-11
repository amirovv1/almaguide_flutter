import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBottomSheet extends StatelessWidget {
  const ProfileBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(16).r,
          child: SizedBox(
            height: 43.h,
            child: CustomButton(
                isActive: true,
                onPressed: () {
                  context.router.push(const SignUpRoute());
                },
                buttonText: S.of(context).registration),
            // child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       foregroundColor: Colors.white,
            //       backgroundColor: AppColors.buttonBlue,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(12).r,
            //       ),
            //     ),
            //     onPressed: () {
            //       context.router.push(const SignUpRoute());
            //     },
            //     child: Center(
            //       child: Text(
            //         S.of(context).registration,
            //         style: ts(TS.s16w600).copyWith(color: Colors.white),
            //       ),
            //     )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15).r,
          child: RichText(
            text: TextSpan(
              style: ts(TS.s14w400).copyWith(color: AppColors.textGrey),
              children: [
                TextSpan(text: S.of(context).have_account),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: () {
                      context.router.push(const AuthRoute());
                    },
                    child: Text(
                      S.of(context).sign_in,
                      style:
                          ts(TS.s14w400).copyWith(color: AppColors.buttonBlue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isActive; // Параметр для определения активности кнопки

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor:
            isActive ? Colors.blue : Colors.grey, // AppColors.buttonBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: isActive ? onPressed : null,
      child: Center(
        child: Text(
          buttonText,
          style: ts(TS.s16w600).copyWith(
              color: Colors.white), // Style adjustments can be made here
        ),
      ),
    );
  }
}
