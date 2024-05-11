import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/home/bloc/home_cubit.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/home_list_widget.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/main_place_card.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/stories_thumbnail.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isLoading = false;

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().initHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10).r,
            child: IconButton(
                onPressed: () => context.router.push(const SearchRoute()),
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 130.w,
        leading: Container(
          margin: const EdgeInsets.only(left: 16).r,
          height: 30.h,
          child: Image.asset(
            Assets.png.almaGuide.path,
          ),
        ),
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          print('нынешний стейт это - ${state.toString()}');
          return state.maybeMap(
            orElse: () {
              return const Center(child: CircularProgressIndicator.adaptive());
            },
            loadingState: (load) =>
                const Center(child: CircularProgressIndicator.adaptive()),
            sucess: (success) {
              print('stori-${success.stories.toList().toString()}');
              return RefreshIndicator.adaptive(
                onRefresh: () async {
                  await context.read<HomeCubit>().initHome();
                },
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      if (success.stories.isNotEmpty)
                        SizedBox(
                          width: 300.w,
                          height: 150.h,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx1, index) {
                              return SizedBox(
                                  height: 150.h,
                                  width: 100.w,
                                  child: StoriesThumbnail(
                                      url:
                                          success.stories[index].uploadedFile ??
                                              ""));
                            },
                            separatorBuilder: (ctx2, index) {
                              return SizedBox(
                                width: 10.w,
                              );
                            },
                            itemCount: success.stories.length,
                          ),
                        ),
                      SizedBox(
                        height: 40.h,
                      ),
                      if (success.attractionDto != null)
                        MainPlaceCard(
                          backgroundImage: success.attractionDto?.image ?? '',
                          name: success.attractionDto!.name,
                          distance: success.attractionDto?.distance ?? '',
                          id: success.attractionDto?.id ?? 0,
                        ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ...success.subsList
                          .map((e) => Column(
                                children: [
                                  HomeListWidget(
                                      title: e.name ?? '',
                                      attracts: e.attractions),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ))
                          .toList()
                      // const HomeListWidget(
                      //   title: 'Достопримечательности',
                      // ),
                      // SizedBox(
                      //   height: 10.h,
                      // ),
                      // const HomeListWidget(
                      //   title: 'Пункты питания',
                      // ),
                      // SizedBox(
                      //   height: 10.h,
                      // ),
                      // const HomeListWidget(
                      //   title: 'Новости',
                      // ),
                      // SizedBox(
                      //   height: 50.h,
                      // ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
