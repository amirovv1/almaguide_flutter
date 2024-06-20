import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/home_list_item.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeListWidget extends StatelessWidget {
  const HomeListWidget(
      {Key? key,
      required this.title,
      required this.attracts,
      required this.categoryId})
      : super(key: key);
  final String title;
  final List<AttractionDto> attracts;
  final int? categoryId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: ts(TS.s18w600).copyWith(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 10.r,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Colors.blue.withOpacity(0.1), // Adjust color here
                ),
                child: SizedBox(
                  height: 32.h,
                  child: TextButton(
                    onPressed: () {
                   if(categoryId !=null) {
                     context.router.push(CategoryDetailRoute(
                          title: title, categoryId: categoryId!));
                   }
                    },
                    child: Text(
                      S.of(context).showAll,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 1.sw,
          height: 170.h,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16).r,
            scrollDirection: Axis.horizontal,
            itemCount: attracts.length,
            itemBuilder: (context, index) {
              return CustomCard(
                index: index,
                attract: attracts[index],
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 20.r),
          ),
        ),
      ],
    );
  }
}
