import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavBarItem {
  final String label;
  final String iconAsset;
  final Color activeColor;

  CustomNavBarItem({
    required this.label,
    required this.iconAsset,
    this.activeColor = AppColors.mainGreen, // Default active color
  });

  BottomNavigationBarItem build() {
    return BottomNavigationBarItem(
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 5).r,
        child: SvgPicture.asset(
          iconAsset,
          // ignore: deprecated_member_use
          color: activeColor,
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 5).r,
        child: SvgPicture.asset(iconAsset),
      ),
      label: label,
    );
  }
}
