import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainPlaceCard extends StatelessWidget {
  final String backgroundImage;

  const MainPlaceCard({super.key, required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16).r,
      width: 1.sw,
      height: 220.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12).r),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Фоновое изображение
          ClipRRect(
            borderRadius: BorderRadius.circular(12).r,
            child: Image.asset(
              backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          // Виджет снизу
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 10, right: 10).r,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5).r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).r,
                  color: AppColors.mainGreen,
                ),
                width: 1.sw,
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.svg.ou),
                    SizedBox(width: 10.r),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Кольсайские озера ',
                            style: ts(TS.s14w600).copyWith(color: Colors.white),
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            width: 5.r,
                          ),
                          Text(
                            '125 км',
                            style: ts(TS.s12w400).copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
