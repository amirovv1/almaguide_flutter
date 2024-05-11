import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class OtpForgotPasswordPage extends StatefulWidget {
  const OtpForgotPasswordPage({super.key});

  @override
  State<OtpForgotPasswordPage> createState() => _OtpForgotPasswordPageState();
}

TextEditingController _controller = TextEditingController();

bool _isActive = false;

class _OtpForgotPasswordPageState extends State<OtpForgotPasswordPage> {
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
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: _isActive ? () {
          context.router.push(const EnterNewPasswordRoute());
        } : null,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(300.w, 40.h),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue, // AppColors.buttonBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text('Продолжить'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.svg.mail24otp),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                  textAlign: TextAlign.center,
                  "На вашу почту было отправлено письмо с кодом",
                  style: ts(TS.s24w700).copyWith(
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              onChanged: (val) {
                if (val.isNotEmpty) {
                  setState(() {
                    _isActive = true;
                  });
                } else {
                  setState(() {
                    _isActive = false;
                  });
                }
              },
              controller: _controller,
              autofocus: true,
              enabled: true,
              decoration: const InputDecoration(
                isDense: true,
                hintText: 'Введите код',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: AppColors.mainGreen,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
