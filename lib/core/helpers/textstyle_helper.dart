// ignore_for_file: constant_identifier_names

import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TS {
  s8w400,
  s9w400,
  s8w600,
  s9w600,
  s13w500,
  s15w600,
  s15w500,
  s15w400,
  s8w700,
  s10w400,
  s11w500,

  s12w200,
  s12w400,
  s12w500,
  s12w600,
  s12w700,
  s14w200,
  s14w400,
  s14w500,
  s14w600,
  s14w700,
  s14w800,
  s16w200,
  s16w400,
  s16w500,
  s16w600,
  s16w700,
  s17w500,
  s18w400,
  s18w500,
  s18w600,

  s36w500,
  s36w700,
  s20w500,
  s100w500,

  s20w700,
  s20w600,
  s24w500,
  s24w600,

  s24w700,
  s26w500,
  s30w600,
  s33w500,
  s34w500,
  s40w700,
  s50w500,
  s60w500,
  s70w600,
  s80w500
}

enum FontTypes { Inter }

TextStyle ts(
  TS textStyle, {
  Color color = AppColors.textGrey,
  FontTypes fontFamily = FontTypes.Inter,
}) {
  switch (textStyle) {
    case TS.s24w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 24.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s11w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 11.sp,
          fontFamily: fontFamily.name,
          color: color);

    case TS.s18w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s14w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s100w500:
      return TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 100.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s8w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 8.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s14w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s12w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s16w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s9w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 9.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s20w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s80w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 80.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s9w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 9.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s8w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 7.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s33w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 33.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s15w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s24w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s13w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 13.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s24w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s15w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s15w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s17w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s8w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 8.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s36w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 36.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s12w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s18w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
          fontFamily: fontFamily.name,
          color: color);

    case TS.s16w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s16w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s16w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s20w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s14w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s14w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s18w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s20w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s10w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s12w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s26w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 26.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s30w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s34w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 34.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s40w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 40.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s50w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 50.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s70w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 70.sp,
          fontFamily: fontFamily.name,
          color: color);
    case TS.s60w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 60.sp,
          fontFamily: fontFamily.name,
          color: color);

    default:
      return const TextStyle();
  }
}
