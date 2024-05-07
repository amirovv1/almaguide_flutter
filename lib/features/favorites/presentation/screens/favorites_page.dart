import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/home/bloc/home_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().getFavorites(context);
    super.initState();
  }
  @override
  void didChangeDependencies() {
    context.read<HomeCubit>().getFavorites(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return state.maybeMap(
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
        initialState: (initial) => const Center(
          child: Text('Здесь можете посмотреть избранное'),
        ),
        sucess: (success) => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: false,
            title: Text(
              S.of(context).favorites,
              style: ts(TS.s24w700).copyWith(color: Colors.black),
            ),
          ),
          body: RefreshIndicator.adaptive(
            onRefresh: () async {},
            child: ListView.separated(
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
                                active: true,
                                attractionId: success.favoriteAttractions[index].id,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.r,
                    ),
                    Text(
                      success.favoriteAttractions[index].name,
                      style: ts(TS.s16w600).copyWith(color: Colors.black),
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
              separatorBuilder: (context, index) => SizedBox(height: 20.r),
              itemCount: success.favoriteAttractions.length,
            ),
          ),
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
        setState(() {
          isFav = !isFav;
        });
        if (isFav == false && (widget.active != null)) {
          context
              .read<HomeCubit>()
              .addAttractionToFavorite(widget.attractionId, context);
        }
        else if(isFav == true && (widget.active != null )){
          context
              .read<HomeCubit>()
              .deleteFromFavorite(widget.attractionId, context);
        }
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
          color: widget.active != null ? Colors.red : AppColors.textGrey,
        )),
      ),
    );
  }
}
