import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/categories/presentation/screens/tour_details_page.dart';
import 'package:almaguide_flutter/features/favorites/presentation/screens/favorites_page.dart';
import 'package:almaguide_flutter/features/home/bloc/attraction_details_cubit.dart';
import 'package:almaguide_flutter/features/home/domain/models/details_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_bottom_sheet.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AttractionDetailScreen extends StatefulWidget {
  const AttractionDetailScreen({super.key, required this.attractId});
  final int attractId;

  @override
  State<AttractionDetailScreen> createState() => _AttractionDetailScreenState();
}

class _AttractionDetailScreenState extends State<AttractionDetailScreen> {
  @override
  void initState() {
    context
        .read<AttractionDetailsCubit>()
        .initAttractDetails(attractId: widget.attractId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions:  const [
          LikeButton(attractionId: 1,)
        ],
        
      ),
      body: BlocConsumer<AttractionDetailsCubit, AttractionDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
            sucess: (attractionDto, reviews) {
              return ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    width: 1.sw,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(Assets.example.image.path),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                          bottom: 12, left: 10, right: 10)
                                      .r,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5)
                                        .r,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                attractionDto?.name ?? '',
                                                style: ts(TS.s14w600).copyWith(
                                                    color: Colors.white),
                                                overflow: TextOverflow.fade,
                                              ),
                                              SizedBox(
                                                width: 5.r,
                                              ),
                                              Text(
                                                '${Formatter.convertMetersToKilometers(attractionDto?.distance ?? '')} км',
                                                style: ts(TS.s12w400).copyWith(
                                                    color: Colors.white),
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16).r,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.r,
                                ),
                                Text(
                                  S.of(context).location,
                                  style: ts(TS.s18w600)
                                      .copyWith(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10.r,
                                ),
                                SizedBox(
                                  height: 50.r,
                                  width: 1.sw,
                                  child: CustomButton(
                                      isActive: true,
                                      onPressed: () async {
                                        await context
                                            .read<AttractionDetailsCubit>()
                                            .attractRoute()
                                            .then((value) {
                                          if (value != null) {
                                            context.router.push(WebViewRoute(url: value));
                                          }
                                        });
                                      },
                                      buttonText: S.of(context).make_route),
                                ),
                                SizedBox(
                                  height: 25.r,
                                ),
                                if (attractionDto?.description != null)
                                  DescriptionWidget(
                                    description:
                                        attractionDto?.description ?? '',
                                  ),
                                ReviewWidget(
                                  reviews: reviews, isAttract: true, itemId: attractionDto?.id ?? 1,
                                ),
                                SizedBox(
                                  height: 25.r,
                                ),
                                Text(
                                  S.of(context).details,
                                  style: ts(TS.s18w600)
                                      .copyWith(color: Colors.black),
                                ),
                                if (attractionDto?.details != null &&
                                    attractionDto!.details!.isNotEmpty)
                                  ...attractionDto.details!
                                      .map(
                                        (e) => DetailsWidget(detail: e),
                                      )
                                      .toList(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400.r,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    required this.detail,
  });
  final DetailsDto detail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(detail.name,
          style: ts(TS.s12w400).copyWith(color: AppColors.textGrey)),
      subtitle: Text(
        detail.value,
        style: ts(TS.s14w400).copyWith(color: Colors.black),
      ),
      trailing: getWidgetForMyData(detail),
    );
  }

  Widget? getWidgetForMyData(DetailsDto data) {
    switch (data.valueType) {
      case ValueType.text:
        return null;

      case ValueType.link:
        // Возвращаем кнопку для открытия ссылки
        return ElevatedButton(
          onPressed: () {},
          child: const Text('Open link'),
        );

      case ValueType.phone:
        // Возвращаем виджет для отображения номера телефона
        return IconButton(
            onPressed: () async {
              await _makePhoneCall(data.value);
            },
            icon: SvgPicture.asset(Assets.svg.phone24));

      default:
        // Если значение перечисления не соответствует ни одному из перечисленных, возвращаем null
        return null;
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    canLaunchUrl(Uri.parse('tel:$phoneNumber')).then((bool result) {
      if (result) {
        launchUrl(Uri.parse('tel:$phoneNumber'),
            mode: LaunchMode.platformDefault);
      } else {}
    });
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.description,
  });
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).description,
          style: ts(TS.s18w600).copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 15.r,
        ),
        Text(
          description,
          style: ts(TS.s14w400).copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 25.r,
        ),
      ],
    );
  }
}


