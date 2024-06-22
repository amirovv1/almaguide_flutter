import 'package:almaguide_flutter/core/helpers/extensions.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/categories/bloc/categories_main_cubit.dart';
import 'package:almaguide_flutter/features/categories/presentation/widgets/categories_card.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CategoriesMainScreen extends StatefulWidget {
  const CategoriesMainScreen({super.key});

  @override
  State<CategoriesMainScreen> createState() => _CategoriesMainScreenState();
}

class _CategoriesMainScreenState extends State<CategoriesMainScreen> {
  @override
  void initState() {
    context.read<CategoriesCubit>().initCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: BlocConsumer<CategoriesCubit, CategoriesState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              },
              sucess: (popCategories, otherCategories) {
                final limitedCategories = popCategories.toList();
                return RefreshIndicator(
                  onRefresh: () async {
                    await context.read<CategoriesCubit>().initCategories();
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16.r,
                        ),
                        CategoriesCard(categories: limitedCategories),
                        SizedBox(height: 16.r),
                        ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 8).r,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            // Отображаем элементы, начиная с 9-го
                            final category = otherCategories[index];
                            return SizedBox(
                              height: 52.h,
                              child: ListTile(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10)
                                        .r,
                                title: Text(
                                  category.name ??
                                      '', // Замените на соответствующее свойство
                                  style: ts(TS.s14w400)
                                      .copyWith(color: Colors.black),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    context.router.push(CategoryDetailRoute(
                                        title: category.name ?? '',
                                        categoryId: category.id));
                                  },
                                  icon: const Icon(Icons.chevron_right),
                                ),
                              ),
                            );
                          },
                          itemCount: otherCategories
                              .length, // Указываем количество элементов, начиная с 9-го
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10).r,
                            title: Text(
                              S
                                  .of(context)
                                  .tours, // Замените на соответствующее свойство
                              style:
                                  ts(TS.s14w400).copyWith(color: Colors.black),
                            ),
                            trailing: IconButton(
                              onPressed: () =>
                                  context.router.push(const TourListRoute()),
                              icon: const Icon(Icons.chevron_right),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10).r,
                            title: Text(
                              S
                                  .of(context)
                                  .exchanges, // Замените на соответствующее свойство
                              style:
                                  ts(TS.s14w400).copyWith(color: Colors.black),
                            ),
                            trailing: IconButton(
                              onPressed: () => context.router
                                  .push(const ExchangeDetailRoute()),
                              icon: const Icon(Icons.chevron_right),
                            ),
                          ),
                        ),
                      ],
                    ).withStaggeredAnimations(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
