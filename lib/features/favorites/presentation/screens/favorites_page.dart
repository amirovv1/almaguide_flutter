import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/home/bloc/home_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen>
    with TickerProviderStateMixin {
  @override
  void didChangeDependencies() {
    BlocProvider.of<HomeCubit>(context).getFavorites();
    BlocProvider.of<HomeCubit>(context).getRoutes();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).getFavorites();
    BlocProvider.of<HomeCubit>(context).getRoutes();

    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  late final TabController _tabController;

  TabBar get _tabBar => TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        isScrollable: true,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        controller: _tabController,
        tabs: [
          Tab(
              child: SizedBox(
                  height: 24.h,
                  width: 168.w,
                  child: Center(
                      child: Text(
                    "Маршруты",
                    style: ts(TS.s14w500).copyWith(color: Colors.black),
                  )))),
          Tab(
              child: SizedBox(
                  height: 24.h,
                  width: 168.w,
                  child: Center(
                      child: Text(
                    "Избранное",
                    style: ts(TS.s14w500).copyWith(color: Colors.black),
                  )))),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      print('state is ${state.toString()}');
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: Text(
            S.of(context).favorites,
            style: ts(TS.s24w700).copyWith(color: Colors.black),
          ),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: _tabBar,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            state.map(
              errorState: (value) => CircularProgressIndicator.adaptive(),
              initialState: (value) {
                return Text('Здвесь будут созданные маршруты');
              },
              loadingState: (value) => CircularProgressIndicator.adaptive(),
              sucess: (success) {
                return Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (ctx, index) {
                              return InkWell(
                                onTap: () {
                                  context.router.push(RouteDetailRoute(
                                      title: success.routes[index].name, routeId:  success.routes[index].id));
                                },
                                child: SizedBox(
                                  height: 50.h,
                                  child: Row(
                                    children: [
                                      Text(success.routes[index].name,
                                          style: ts(TS.s14w500)
                                              .copyWith(color: Colors.black)),
                                      const Spacer(),
                                      const Icon(Icons.chevron_right),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (ctx, index) {
                              return SizedBox(width: 15.h);
                            },
                            itemCount: success.routes.length),
                      )
                    ],
                  ),
                );
              },
            ),
            state.map(
              errorState: (error) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              initialState: (initial) => const Center(
                child: Text('Здесь можете посмотреть избранное'),
              ),
              sucess: (success) {
                print(success.routes.map((e) => e.name).toList().toString());
                print(
                    'избранные - ${success.favoriteAttractions.toList().toString()}');
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      context.read<HomeCubit>().getFavorites();
                    },
                    child: success.favoriteAttractions.isEmpty
                        ? Center(
                            child: Text('Добавьте в избранное'),
                          )
                        : Column(
                            children: [
                              ListView.separated(
                                shrinkWrap: true,
                                padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 20)
                                    .r,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 160.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12).r,
                                          color: Colors.red,
                                        ),
                                        child: Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12).r,
                                              child: Image.asset(
                                                Assets.example.example1.path,
                                                fit: BoxFit
                                                    .cover, // Растягивание изображения на весь контейнер
                                              ),
                                            ),
                                            Positioned(
                                                top: 0,
                                                right: 0,
                                                child: LikeButton(
                                                  //active: true,
                                                  attractionId: success
                                                      .favoriteAttractions[
                                                          index]
                                                      .id,
                                                ))
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.r,
                                      ),
                                      Text(
                                        success.favoriteAttractions[index].name,
                                        style: ts(TS.s16w600)
                                            .copyWith(color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10.r,
                                      ),
                                      Text(
                                        '${Formatter.convertMetersToKilometers(success.favoriteAttractions[index].distance ?? 'N')} км',
                                        style: ts(TS.s14w500).copyWith(
                                            color: const Color(0xFF1F1F1F)),
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 20.r),
                                itemCount: success.favoriteAttractions.length,
                              ),
                              SizedBox(height: 20.h),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16).r,
                                height: 48.h,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.read<HomeCubit>().makeRoute();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue, // Цвет фона кнопки
                                    onPrimary:
                                        Colors.white, // Цвет текста на кнопке
                                    elevation:
                                        4, // Высота эффекта поднятия кнопки
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Закругленные углы кнопки
                                    ),
                                  ),
                                  child: Text(
                                    'Создать маршрут',
                                    style: ts(TS.s16w600)
                                        .copyWith(color: Colors.white),
                                  ), // Текст на кнопке
                                ),
                              ),
                            ],
                          ),
                  ),
                );
              },
              loadingState: (load) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key, required this.attractionId, this.active});

  final int attractionId;
  final bool? active;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isFav = false;
  bool isAuthorized = false;

  @override
  void initState() {
    isFav = widget.active ?? true;
    _loadAccess();
    super.initState();
  }

  _loadAccess() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      final String? access = prefs.getString('access');
      isAuthorized = access != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isAuthorized
        ? InkWell(
            onTap: () {
              // Store the previous value of isFav
              final previousIsFav = isFav;

              // Toggle the value of isFav
              setState(() {
                isFav = !isFav;
              });

              // Get the HomeCubit instance from context
              final homeCubit = context.read<HomeCubit>();

              // If the previous value was true, remove from favorites; otherwise, add to favorites
              if (previousIsFav) {
                homeCubit.deleteFromFavorite(widget.attractionId, context);
              } else {
                homeCubit.addAttractionToFavorite(widget.attractionId, context);
              }
            },
            child: Container(
              margin: const EdgeInsets.all(10).r,
              width: 32.r,
              height: 32.r,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Center(
                  child: Icon(
                Icons.favorite,
                color: widget.active != null || isFav
                    ? Colors.red
                    : AppColors.textGrey,
              )),
            ),
          )
        : SizedBox();
  }
}
