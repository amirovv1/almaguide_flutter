import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/profile/bloc/my_tour_cubit/my_tour_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class MyTourListScreen extends StatefulWidget {
  const MyTourListScreen({super.key});

  @override
  State<MyTourListScreen> createState() => _MyTourListScreenState();
}

class _MyTourListScreenState extends State<MyTourListScreen> {
  @override
  void initState() {
    BlocProvider.of<MyTourCubit>(context).initCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          S.of(context).tours,
          style: ts(TS.s18w600).copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<MyTourCubit, MyTourState>(
        builder: (context, state) {
          return RefreshIndicator.adaptive(
              onRefresh: () async {
                    BlocProvider.of<MyTourCubit>(context).initCategories();

              },
              child: state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                },
                sucess: (tours) {
                  return ListView.separated(
                    shrinkWrap: true,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 20)
                            .r,
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
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.r,
                          ),
                          Text(
                            tours[index].title,
                            style:
                                ts(TS.s16w600).copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            height: 10.r,
                          ),
                          Text(
                           '${ tours[index].price.toStringAsFixed(0)} ₸',
                            style: ts(TS.s14w500)
                                .copyWith(color: const Color(0xFF1F1F1F)),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 20.r),
                    itemCount: tours.length,
                  );
                },
              ));
        },
      ),
    );
  }
}
