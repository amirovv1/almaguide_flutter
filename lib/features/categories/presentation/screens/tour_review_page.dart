// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:almaguide_flutter/core/helpers/auth_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/categories/bloc/review_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class TourReviewScreen extends StatefulWidget {
  const TourReviewScreen(
      {super.key, required this.tourId, required this.isAttract});
  final int tourId;
  final bool isAttract;

  @override
  State<TourReviewScreen> createState() => _TourReviewScreenState();
}

class _TourReviewScreenState extends State<TourReviewScreen> {
  @override
  void initState() {
    context
        .read<ReviewsCubit>()
        .initCategories(widget.isAttract, widget.tourId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20).r,
        width: 1.sw,
        height: 48.h,
        child: ElevatedButton(
            onPressed: () {
              checkAuthorizationAndExecute(context, () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return FeedbackDialog(
                      isAttract: widget.isAttract,
                      itemId: widget.tourId,
                    );
                  },
                );
              });
            },
            child: Center(
              child: Text(S.of(context).make_a_new_review),
            )),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.router.popForced();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          S.of(context).reviews,
          style: ts(TS.s18w600).copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ReviewsCubit, ReviewsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
            sucess: (tours) {
              final reviews = tours;

              return reviews.isEmpty
                  ? Center(
                      child: Text(S.of(context).reviews_empty),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16)
                          .r,
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
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
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
                                      DateFormat('dd MMMM yyyy, HH:mm').format(
                                          DateTime.parse(review.createdAt ?? '')
                                              .toLocal()),
                                      style: ts(TS.s12w400),
                                    ),
                                    SizedBox(
                                        height: 16.h,
                                        child: RatingBar.builder(
                                          initialRating: review.rate.toDouble(),
                                          minRating: 0,
                                          maxRating: 5,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          itemSize: 16.r,
                                          ignoreGestures: true,
                                          onRatingUpdate: (rating) {},
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
                              style:
                                  ts(TS.s14w400).copyWith(color: Colors.black),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 10.h,
                          ),
                      itemCount: reviews.length);
            },
          );
        },
      ),
    );
  }
}

class FeedbackDialog extends StatefulWidget {
  final bool isAttract;
  final int itemId;

  const FeedbackDialog(
      {super.key, required this.isAttract, required this.itemId});
  @override
  _FeedbackDialogState createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  TextEditingController _feedbackController = TextEditingController();
  int _rating = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).take_review),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).how_trip),
          SizedBox(height: 10.r),
          Row(
            children: List.generate(5, (index) {
              return IconButton(
                icon: Icon(
                  index < _rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                ),
                onPressed: () {
                  setState(() {
                    _rating = index + 1;
                  });
                },
              );
            }),
          ),
          SizedBox(height: 20.r),
          TextField(
            controller: _feedbackController,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: S.of(context).write_review_this,
              border: const OutlineInputBorder(),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(S.of(context).cancel),
        ),
        TextButton(
          onPressed: () {
            String feedback = _feedbackController.text;

            if (feedback.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(S.of(context).feel_field)));
            } else {
              context.read<ReviewsCubit>().sendReview(
                  tourId: widget.itemId,
                  review: feedback,
                  rate: _rating,
                  isAttract: widget.isAttract);
            }

            Navigator.pop(context);
          },
          child: Text(S.of(context).send),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }
}
