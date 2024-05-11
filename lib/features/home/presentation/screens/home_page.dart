import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/home/bloc/home_cubit.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/home_list_widget.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/main_place_card.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/stories_list.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/stories_thumbnail.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    // context.read<HomeCubit>().initHome();
    // context.read<HomeCubit>().getStories();
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
          return state.map(
              loadingState: (load) =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              sucess: (success) {
                return RefreshIndicator.adaptive(
                  onRefresh: () async {
                    await context.read<HomeCubit>().initHome();
                  },
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        if (success.stories.isNotEmpty)
                          Container(
                            width: 300.w,
                            height: 150.h,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx1, index) {
                                return Container(
                                    height: 150.h,
                                    width: 100.w,
                                    child: StoriesThumbnail(
                                        description:
                                            success.stories[index].title,
                                        url: success
                                                .stories[index].uploadedFile ??
                                            "https://images.unsplash.com/photo-1715276611597-048987ab7d97?q=80&w=2819&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"));
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
              initialState: (init) =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              errorState: (error) =>
                  const Center(child: CircularProgressIndicator.adaptive()));
        },
      ),
    );
  }
}
