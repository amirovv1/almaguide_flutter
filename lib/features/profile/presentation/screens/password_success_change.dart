import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class PasswordSuccessChangePage extends StatelessWidget {
  const PasswordSuccessChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed:() {
          context.router.popAndPush(const AuthRoute());
        } ,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(300.w, 40.h),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue, // AppColors.buttonBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text('Войти'),
      ),
      appBar:  AppBar(
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
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF1CAB22),
                    shape: BoxShape.circle
                ),
                child: Center(
                  child:SvgPicture.asset(Assets.svg.check24),
                ),
              ),
            SizedBox(height: 20.h,),
            Text(
                textAlign: TextAlign.center,
                "Пароль успешно обновлен",
                style: ts(TS.s24w700).copyWith(
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}
