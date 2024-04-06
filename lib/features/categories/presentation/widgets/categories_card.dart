import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/features/categories/presentation/widgets/categories_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.all(16).r,
      decoration: BoxDecoration(
          color: AppColors.mainGreen,
          borderRadius: BorderRadius.circular(12).r),
      child: Stack(
        children: [
          Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                Assets.png.oyuCard.path,
                width: 100.r,
                height: 80.r,
              )),
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset(Assets.png.oyuCard2.path,
                  width: 100.r, height: 80.r)),
          CategoriesGridView(icons: [
            Assets.svg.catLocation,
            Assets.svg.catSport,
            Assets.svg.catCurort,
            Assets.svg.catTransport,
            Assets.svg.catHome,
            Assets.svg.catFood,
            Assets.svg.catHotels,
            Assets.svg.catNews,
          ], titles: const [
            'Места',
            'Спорт',
            'Курорты',
            'Транспорт',
            'Размещение',
            'Еда',
            'Санатории',
            'Новости',
          ])
        ],
      ),
    );
  }
}
