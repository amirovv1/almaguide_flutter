import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/features/categories/presentation/widgets/categories_grid.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesCard extends StatelessWidget {
  final List<CategoryDto> categories;
  const CategoriesCard({
    super.key, required this.categories,
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
          CategoriesGridView(
            categories: categories,
          )
        ],
      ),
    );
  }
}
