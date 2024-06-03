// ignore_for_file: deprecated_member_use

import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/categories/bloc/categories_details_cubit.dart';
import 'package:almaguide_flutter/features/categories/presentation/widgets/category_details_widgets/order_modal.dart';
import 'package:almaguide_flutter/features/favorites/presentation/screens/favorites_page.dart';
import 'package:almaguide_flutter/features/home/domain/models/subcategory_dto.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen(
      {super.key, required this.title, required this.categoryId});
  final String title;
  final int categoryId;

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

List<SubcategoryDto> subs = [];

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  @override
  void initState() {
    context.read<CategoriesDetailsCubit>().init(categoryId: widget.categoryId);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.r),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              AppBar(
                leading: IconButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    )),
                elevation: 0,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  widget.title,
                  style: ts(TS.s18w600).copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 40,
                        child: ListView.separated(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16).r,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.all(10).r,
                                decoration: BoxDecoration(
                                    color: AppColors.mainGreen,
                                    borderRadius: BorderRadius.circular(8).r),
                                child: Center(
                                    child: Text(
                                  subs[index].name ?? '',
                                  style: ts(TS.s12w600)
                                      .copyWith(color: Colors.white),
                                )),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 5.r,
                              );
                            },
                            itemCount: subs.length),
                      )),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            showOrderMethod(context);
                          },
                          icon: SvgPicture.asset(Assets.svg.sort24))),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            showFilterModal(context);
                          },
                          icon: SvgPicture.asset(Assets.svg.filter24)))
                ],
              )),
            ],
          ),
        ),
      ),
      body: BlocConsumer<CategoriesDetailsCubit, CategoriesDetailsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
            sucess: (attractions, subs) {
              final success = attractions;
              return ListView.separated(
                
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20).r,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12).r,
                          color: Colors.red,
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(12).r,
                                child: CachedNetworkImage(
                                  imageUrl: success[index].image ?? '',
                                  fit: BoxFit.cover,
                                )),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: LikeButton(
                                  //active: true,
                                  attractionId: success[index].id,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.r,
                      ),
                      Text(
                        success[index].name,
                        style: ts(TS.s16w600).copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        height: 10.r,
                      ),
                      Text(
                        '${Formatter.convertMetersToKilometers(success[index].distance ?? 'N')} км',
                        style: ts(TS.s14w500)
                            .copyWith(color: const Color(0xFF1F1F1F)),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 20.r),
                itemCount: success.length,
              );
            },
          );
        },
        listener: (BuildContext context, CategoriesDetailsState state) {
          state.whenOrNull(
            sucess: (attractions, subc) {
              subs = subc;
              setState(() {});
            },
          );
        },
      ),
    );
  }

  void showOrderMethod(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
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
                      S.of(context).sorting,
                      style: ts(TS.s24w700).copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      height: 20.r,
                    ),
                    ...Order.values
                        .map((e) => Container(
                              margin: const EdgeInsets.only(bottom: 30).r,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                      // context
                                      //     .read<LanguageCubit>()
                                      //     .changeLang(e.languageCode);
                                    },
                                    child: Container(
                                      width: 24.r,
                                      height: 24.r,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.selectGrey),
                                      child: 'ewq' == 'ewqqw'
                                          ? Center(
                                              child: Container(
                                                width: 14.r,
                                                height: 14.r,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: AppColors.mainGreen),
                                              ),
                                            )
                                          : null,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.r,
                                  ),
                                  Text(
                                    Formatter.sortFormat(e, context),
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
        });
  }

  void showFilterModal(BuildContext context) {
      final List<int> values = List.generate(5, (index) => 5 - index);

    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
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
                      S.of(context).filter,
                      style: ts(TS.s24w700).copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      height: 20.r,
                    ),
                   ListView.builder(
                    
        scrollDirection: Axis.horizontal,
        itemCount: values.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: 100,
              height: 20,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    values[index].toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          );
        },
      ),
                  ]),
            ),
          );
        });
  }
}
