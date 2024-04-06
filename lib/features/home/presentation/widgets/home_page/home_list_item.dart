import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final int index;

  const CustomCard({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16).r,
        color: AppColors.greenCard, // Adjust color here
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              Assets.png.oyuCard.path, // Adjust image path here
              width: 100.r,
              height: 80.r,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 1.sw,
                  height: 100.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12).r,
                    child: Image.asset(
                      index.isOdd
                          ? Assets.example.example2.path
                          : Assets
                              .example.example1.path, // Adjust image path here
                      width: 1.sw,
                      height: 100.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10.r),
                Text(
                  index.isOdd
                      ? 'Заповедник-музей Иссык '
                      : 'Памятник Наурызбай батыру', // Sample text
                  style: ts(TS.s14w600).copyWith(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
