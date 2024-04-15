// ignore_for_file: deprecated_member_use

import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen({super.key, required this.title});
  final String title;

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.r),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              AppBar(
                leading: IconButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    )),
                elevation: 0,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  widget.title,
                  style: ts(TS.s18w600).copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: SizedBox(
                                                            height: 40,
                            
                            child: ListView.separated(
                              padding: const EdgeInsets.symmetric(horizontal: 5).r,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.all(10).r,
                                    decoration: BoxDecoration(
                                        color: AppColors.mainGreen,
                                        borderRadius: BorderRadius.circular(8).r),
                                    child: const Center(child: Text('Category')),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 5.r,
                                  );
                                },
                                itemCount: 5),
                          )),
                      Expanded(
                          flex: 1,
                          child:
                              IconButton(onPressed: () {}, icon: SvgPicture.asset(Assets.svg.sort24))),
                      Expanded(
                          flex: 1,
                          child:
                              IconButton(onPressed: () {}, icon: SvgPicture.asset(Assets.svg.filter24)))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
