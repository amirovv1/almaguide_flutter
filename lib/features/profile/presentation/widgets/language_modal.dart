import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/profile/bloc/language_cubit/language_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/colors_helper.dart';

void showLanguageModal(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            return Container(
              height: 1.sh / 2.5,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12).r),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16).r,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.r,
                      ),
                      Center(
                        child: Container(
                          width: 40.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              color: AppColors.textGrey,
                              borderRadius: BorderRadius.circular(16.r)),
                        ),
                      ),
                      SizedBox(
                        height: 20.r,
                      ),
                      Text(
                        S.of(context).app_language,
                        style: ts(TS.s24w700).copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        height: 20.r,
                      ),
                      ...S.delegate.supportedLocales
                          .map((e) => Container(
                                margin: const EdgeInsets.only(bottom: 30).r,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        context
                                            .read<LanguageCubit>()
                                            .changeLang(e.languageCode);
                                      },
                                      child: Container(
                                        width: 24.r,
                                        height: 24.r,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.selectGrey),
                                        child: state.langCode == e.languageCode
                                            ? Center(
                                                child: Container(
                                                  width: 14.r,
                                                  height: 14.r,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: AppColors
                                                              .mainGreen),
                                                ),
                                              )
                                            : null,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.r,
                                    ),
                                    Text(
                                      Formatter.getLanguageName(e.languageCode),
                                      style: ts(TS.s14w400)
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ))
                          .toList()
                    ]),
              ),
            );
          },
        );
      });
}