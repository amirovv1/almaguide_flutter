// ignore_for_file: use_key_in_widget_constructors

import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainPlaceCard extends StatelessWidget {
  final int id;
  final String backgroundImage;
  final String name;
  final String distance;

  const MainPlaceCard(
      {
      required this.backgroundImage,
      required this.name,
      required this.distance,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(AttractionDetailRoute(attractId: id));
      },
      child: Container(
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
                child: CachedNetworkImage(
                  imageUrl: backgroundImage,
                  fit: BoxFit.cover,
                )),
            // Виджет снизу
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 12, left: 10, right: 10).r,
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
                              name,
                              style:
                                  ts(TS.s14w600).copyWith(color: Colors.white),
                              overflow: TextOverflow.fade,
                            ),
                            SizedBox(
                              width: 5.r,
                            ),
                            Text(
                              '${convertMetersToKilometers(distance)} км',
                              style:
                                  ts(TS.s12w400).copyWith(color: Colors.white),
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
      ),
    );
  }

  String convertMetersToKilometers(String metersString) {
    // Преобразуем строку в число
    double meters = double.parse(metersString);

    // Переводим метры в километры
    double kilometers = meters / 1000;

    // Возвращаем результат как строку
    return kilometers.toInt().toString();
  }
}
