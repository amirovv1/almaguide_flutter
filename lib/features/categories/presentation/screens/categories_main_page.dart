import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/categories/presentation/widgets/categories_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CategoriesMainScreen extends StatefulWidget {
  const CategoriesMainScreen({super.key});

  @override
  State<CategoriesMainScreen> createState() => _CategoriesMainScreenState();
}

class _CategoriesMainScreenState extends State<CategoriesMainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: RefreshIndicator.adaptive(
          onRefresh: () async{
            
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 16.r,
                ),
                const CategoriesCard(),
                SizedBox(height: 16.r),
                ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8).r,
                  physics: const NeverScrollableScrollPhysics(), // Отключение прокрутки
                  shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 52.h,
                        child: ListTile(
                          
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10).r,
                          title: Text('Название категорий', style: ts(TS.s14w400).copyWith(color: Colors.black),),
                          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right)),
                        ),
                      );
                    },
                   
                    itemCount: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
