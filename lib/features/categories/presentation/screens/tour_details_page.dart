import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/auth_helper.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/categories/bloc/tour_detail_cubit.dart';
import 'package:almaguide_flutter/features/favorites/domain/models/tour_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/details_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/attraction_detail_page.dart';
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
class TourDetailsScreen extends StatefulWidget {
  const TourDetailsScreen({super.key, required this.tourId});
  final int tourId;

  @override
  State<TourDetailsScreen> createState() => _TourDetailScreenState();
}

class _TourDetailScreenState extends State<TourDetailsScreen> {
  TourDto? tour;
  @override
  void initState() {
    context.read<TourDetailsCubit>().initTour(id: widget.tourId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: Container(
          margin: const EdgeInsets.all(20).r,
          width: 1.sw,
          height: 48.r,
          child: CustomButton(
              onPressed: () {
                checkAuthorizationAndExecute(context, () {
                  _showAccepBuy(context, tour!);
                });
              },
              buttonText: S.of(context).buy_tour,
              isActive: true)),
      body: BlocConsumer<TourDetailsCubit, TourDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            sucess: (tour1) {
              tour = tour1;
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
            sucess: (tour) {
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
                              SizedBox(
                                  height: 200.h,
                                  width: 1.sw,
                                  child: CachedNetworkImage(
                                    imageUrl: tour.image ?? '',
                                    fit: BoxFit.cover,
                                  )),
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
                                  tour.title,
                                  style: ts(TS.s24w600)
                                      .copyWith(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10.r,
                                ),
                                Text(
                                  '${tour.price.toStringAsFixed(0)} ₸',
                                  style: ts(TS.s18w600)
                                      .copyWith(color: AppColors.mainGreen),
                                ),
                                SizedBox(
                                  height: 25.r,
                                ),
                                DescriptionWidget(
                                  description: tour.description,
                                ),
                                // ReviewWidget(
                                //   reviews: reviews,
                                // ),
                                SizedBox(
                                  height: 15.r,
                                ),
                                Text(
                                  S.of(context).details,
                                  style: ts(TS.s18w600)
                                      .copyWith(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 15.r,
                                ),
                                Text(
                                  S.of(context).duration,
                                  style: ts(TS.s12w400),
                                ),
                                SizedBox(
                                  height: 10.r,
                                ),
                                Text(
                                  S.of(context).tour_duration(tour.duration),
                                  style: ts(TS.s14w400)
                                      .copyWith(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 15.r,
                                ),
                                if (tour.wayToTravel != null)
                                  Text(
                                    S.of(context).way2travel,
                                    style: ts(TS.s12w400),
                                  ),
                                if (tour.wayToTravel != null)
                                  SizedBox(
                                    height: 10.r,
                                  ),
                                if (tour.wayToTravel != null)
                                  Text(
                                    tour.wayToTravel!,
                                    style: ts(TS.s14w400)
                                        .copyWith(color: Colors.black),
                                  ),
                                SizedBox(height: 25.r),
                                ReviewWidget(
                                    reviews: const [],
                                    isAttract: false,
                                    itemId: tour.id)
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

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.reviews,
    required this.isAttract,
    required this.itemId,
  });
  final List<ReviewDto> reviews;
  final bool isAttract;
  final int itemId;

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
                        onPressed: () {
                          isAttract
                              ? context.router.push(TourReviewRoute(
                                  tourId: itemId, isAttract: isAttract))
                              : context.router.push(TourReviewRoute(
                                  tourId: itemId, isAttract: isAttract));
                        },
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
                child: Text(S.of(context).reviews_empty),
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
                                  imageUrl: review.user?.photo ?? '',
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
                                review.user?.fullName ?? '',
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
                context.router
                    .push(TourReviewRoute(tourId: itemId, isAttract: isAttract));
              
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

void _showAccepBuy(BuildContext context, TourDto tour) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
    ),
    backgroundColor: Colors.white,
    context: context,
    builder: (context) {
      return Container(
        height: 1.sh / 2.2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12).r),
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
                S.of(context).confirm_pay_title,
                style: ts(TS.s24w700).copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 20.r,
              ),
              Text(
                S.of(context).tour_titile,
                style: ts(TS.s12w400),
              ),
              SizedBox(
                height: 5.r,
              ),
              Text(
                tour.title,
                style: ts(TS.s14w400).copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 10.r,
              ),
              Text(
                S.of(context).duration,
                style: ts(TS.s12w400),
              ),
              SizedBox(
                height: 5.r,
              ),
              Text(
                S.of(context).tour_duration(tour.duration),
                style: ts(TS.s14w400).copyWith(color: Colors.black),
              ),
              if (tour.wayToTravel != null)
                SizedBox(
                  height: 10.r,
                ),
              if (tour.wayToTravel != null)
                Text(
                  S.of(context).way2travel,
                  style: ts(TS.s12w400),
                ),
              if (tour.wayToTravel != null)
                SizedBox(
                  height: 5.r,
                ),
              if (tour.wayToTravel != null)
                Text(
                  tour.wayToTravel!,
                  style: ts(TS.s14w400).copyWith(color: Colors.black),
                ),
              SizedBox(
                height: 15.r,
              ),
              Row(
                children: [
                  Text(S.of(context).total,
                      style: ts(TS.s14w600).copyWith(color: Colors.black)),
                  const Spacer(),
                  Text(tour.price.toStringAsFixed(0),
                      style: ts(TS.s14w600).copyWith(color: Colors.black))
                ],
              ),
              SizedBox(
                height: 30.r,
              ),
              SizedBox(
                height: 48.h,
                width: 1.sw,
                child: CustomButton(
                    onPressed: () {
                      context.router.popAndPush(PaymentRoute(tourId: tour.id));
                    },
                    buttonText: S.of(context).Confirm,
                    isActive: true),
              )
            ],
          ),
        ),
      );
    },
  );
}
