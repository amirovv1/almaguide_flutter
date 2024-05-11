import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/home/bloc/home_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen>
    with TickerProviderStateMixin {
  @override
  void initState(){
    context.read<HomeCubit>().getFavorites();
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
              child: Container(
                  height: 24.h,
                  width: 168.w,
                  child: Center(
                      child: Text(
                    "Маршруты",
                    style: ts(TS.s14w500).copyWith(color: Colors.black),
                  )))),
          Tab(
              child: Container(
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
            child: Container(
                margin: EdgeInsets.all(2.r),
                height: 50.h,
                padding: EdgeInsets.all(7.r),
                decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: _tabBar),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (ctx, index) {
                          return InkWell(
                            onTap: () {},
                            child: SizedBox(
                              height: 50.h,
                              child: Row(
                                children: [
                                  Text("Маршрут $index",
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
                        itemCount: 6),
                  )
                ],
              ),
            ),
            state.map(
              errorState: (error) => const Center(
                child: CircularProgressIndicator(),
              ),
              initialState: (initial) => const Center(
                child: Text('Здесь можете посмотреть избранное'),
              ),
              sucess: (success) => Scaffold(
                backgroundColor: Colors.white,
                body: RefreshIndicator.adaptive(
                  onRefresh: () async {},
                  child: ListView.separated(
                          padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 20),
                          itemBuilder: (context, index) {
                            return Column(
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
                                        borderRadius:
                                            BorderRadius.circular(12).r,
                                        child: Image.network(
                                          success.favoriteAttractions[index].image != null ? success.favoriteAttractions[index].image! : 'something',
                                          fit: BoxFit
                                              .cover, // Растягивание изображения на весь контейнер
                                        ),
                                      ),
                                      Positioned(
                                          top: 0,
                                          right: 0,
                                          child: LikeButton(
                                            active: true,
                                            attractionId: success
                                                .favoriteAttractions[index].id,
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
                                  style: ts(TS.s14w500)
                                      .copyWith(color: const Color(0xFF1F1F1F)),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 20.r),
                          itemCount: success.favoriteAttractions.length,
                        ),
                ),
              ),
              loadingState: (load) => const Center(
                child: CircularProgressIndicator(),
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isFav == false && widget.active == null) {
          context
              .read<HomeCubit>()
              .addAttractionToFavorite(widget.attractionId, context);
        } else if (isFav == true || (widget.active != null && widget.active! == true)) {
          context
              .read<HomeCubit>()
              .deleteFromFavorite(widget.attractionId, context);
        }
        setState(() {
          isFav = !isFav;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(10).r,
        width: 32.r,
        height: 32.r,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Center(
            child: Icon(
          Icons.favorite,
          color:
              widget.active != null || isFav ? Colors.red : AppColors.textGrey,
        )),
      ),
    );
  }
}
