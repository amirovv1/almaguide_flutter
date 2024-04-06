import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/home_list_widget.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/main_place_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
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
      body: RefreshIndicator.adaptive(
        onRefresh: () async{
          
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainPlaceCard(
                backgroundImage: Assets.example.image.path,
              ),
              SizedBox(height: 10.h,),
              const HomeListWidget(
                title: 'Достопримечательности',
              ),
                          SizedBox(height: 10.h,),
        
              const HomeListWidget(
                title: 'Пункты питания',
              ),
                          SizedBox(height: 10.h,),
        
              const HomeListWidget(
                title: 'Новости',
              ),
                          SizedBox(height: 50.h,),
        
            ],
          ),
        ),
      ),
    );
  }
}
