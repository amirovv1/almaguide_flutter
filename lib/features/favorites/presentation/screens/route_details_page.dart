import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/favorites/presentation/bloc/route_details_cubit.dart';
import 'package:almaguide_flutter/features/favorites/presentation/screens/favorites_page.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/bloc/home_cubit.dart';

@RoutePage()
class RouteDetailScreen extends StatefulWidget {
  const RouteDetailScreen(
      {super.key, required this.title, required this.routeId});
  final String title;
  final int routeId;

  @override
  State<RouteDetailScreen> createState() => _RouteDetailScreenState();
}

class _RouteDetailScreenState extends State<RouteDetailScreen> {
  @override
  void initState() {
    context.read<RouteDetailsCubit>().initRouteDetails(id: widget.routeId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                // ignore: deprecated_member_use
                context.router.pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              )),
          title: Text(
            widget.title,
            style: ts(TS.s18w600).copyWith(color: Colors.black),
          ),
        ),
        body: BlocConsumer<RouteDetailsCubit, RouteDetailsState>(
          builder: (BuildContext context, RouteDetailsState state) {
            return state.maybeMap(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
              sucess: (value) {
                return RefreshIndicator.adaptive(
                  onRefresh: () async =>
                      context.read<HomeCubit>().getFavorites(),
                  child: value.attracts.isEmpty
                      ? Center(
                          child: Text(S.of(context).empty_list),
                        )
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
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
                                                child: CachedNetworkImage(
                                                  imageUrl: value
                                                          .attracts[index]
                                                          .image ??
                                                      '',
                                                  fit: BoxFit.cover,
                                                )),
                                            Positioned(
                                                top: 0,
                                                right: 0,
                                                child: LikeButton(
                                                  //active: true,
                                                  attractionId:
                                                      value.attracts[index].id,
                                                ))
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.r,
                                      ),
                                      Text(
                                        value.attracts[index].name,
                                        style: ts(TS.s16w600)
                                            .copyWith(color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10.r,
                                      ),
                                      Text(
                                        '${Formatter.convertMetersToKilometers(value.attracts[index].distance ?? 'N')} км',
                                        style: ts(TS.s14w500).copyWith(
                                            color: const Color(0xFF1F1F1F)),
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 20.r),
                                itemCount: value.attracts.length,
                              ),
                              SizedBox(height: 20.h),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ).r,
                                height: 48.h,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<RouteDetailsCubit>()
                                        .makeRoute(id: widget.routeId);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        Colors.blue, // Цвет текста на кнопке
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    S.of(context).go_to_route,
                                    style: ts(TS.s16w600)
                                        .copyWith(color: Colors.white),
                                  ), // Текст на кнопке
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              )
                            ],
                          ),
                        ),
                );
              },
            );
          },
          listener: (BuildContext context, RouteDetailsState state) {
            state.whenOrNull(
              sucessRoute: (url) {
                context.router.push(WebViewRoute(url: url));
              },
            );
          },
        ));
  }
}


