import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
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
                                  reviews: reviews,
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

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.reviews,
  });
  final List<ReviewDto> reviews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).reviews,
              style: ts(TS.s18w600).copyWith(color: Colors.black),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.blue.withOpacity(0.1), // Adjust color here
              ),
              child: reviews.length > 1
                  ? SizedBox(
                      height: 32.h,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          S.of(context).showAll,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue),
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
        reviews.isEmpty
            ? Padding(
                padding: const EdgeInsets.all(16).r,
                child: const Text('Отзывов нет'),
              )
            : ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 10).r,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final review = reviews[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40.r,
                            height: 40.r,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: CachedNetworkImage(
                                  imageUrl: review.user.photo ?? '',
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) {
                                    return Container(
                                      color: Colors.grey,
                                    );
                                  },
                                )),
                          ),
                          SizedBox(
                            width: 10.r,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                review.user.fullName ?? '',
                                style: ts(TS.s12w400)
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                DateFormat('dd MMMM yyyy, HH: mm').format(
                                    DateTime.parse(review.createdAt ?? '')),
                                style: ts(TS.s12w400),
                              ),
                              SizedBox(
                                  height: 16.h,
                                  child: RatingBar.builder(
                                    initialRating: review.rate
                                        .toDouble(), // Устанавливает начальный рейтинг
                                    minRating: 0, // Минимальный рейтинг
                                    maxRating: 5, // Максимальный рейтинг
                                    allowHalfRating:
                                        true, // Разрешает половинные оценки
                                    itemCount:
                                        5, // Количество элементов рейтинга (звезды)
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemSize: 16
                                        .r, // Размер элементов рейтинга (звезды)
                                    ignoreGestures:
                                        true, // Установите в true, чтобы виджет был только для отображения
                                    onRatingUpdate: (rating) {
                                      // Обработчик событий, который будет вызываться при изменении рейтинга
                                      // В данном случае ничего не делаем, потому что это виджет только для отображения
                                    },
                                  ))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.r,
                      ),
                      Text(
                        review.review,
                        style: ts(TS.s14w400).copyWith(color: Colors.black),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 10.h,
                    ),
                itemCount: reviews.length),
        SizedBox(
          height: 10.r,
        ),
        SizedBox(
          width: 1.sw,
          height: 32.h,
          child: ElevatedButton(
            onPressed: () {
              // Добавьте логику при нажатии кнопки здесь
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.green,
              backgroundColor: Colors.white, // Зеленый цвет текста
              elevation: 0, // Высота приподнятия
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // Скругление углов кнопки
                side: const BorderSide(
                    color: Colors.green, width: 1), // Зеленая граница
              ),
            ),
            child: Text(
              S.of(context).make_comment,
              style: const TextStyle(
                color: Colors.green, // Зеленый цвет текста
              ),
            ),
          ),
        )
      ],
    );
  }
}
