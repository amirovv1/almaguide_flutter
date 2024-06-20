// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/profile/bloc/auth_cubit/auth_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class EnterNewPasswordPage extends StatefulWidget {
  const EnterNewPasswordPage({super.key});

  @override
  State<EnterNewPasswordPage> createState() => _EnterNewPasswordPageState();
}

TextEditingController _controller = TextEditingController();
TextEditingController _controllerRepeat = TextEditingController();

bool _isActive = false;
bool _isActive1 = false;
var _errorValidation;

class _EnterNewPasswordPageState extends State<EnterNewPasswordPage> {
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
        title: Padding(
          padding: const EdgeInsets.only(left: 10).r,
          child: Text(
            'Придумайте новый пароль',
            style: ts(TS.s18w600).copyWith(color: Colors.black),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: _isActive && _isActive1
            ? () {
                if (_controller.text == _controllerRepeat.text) {
                  context
                      .read<AuthCubit>()
                      .requestNewPassword(_controllerRepeat.text, context);
                } else {
                  setState(() {
                    _errorValidation = "Пароли не совпадают";
                  });
                }
              }
            : null,
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
            SvgPicture.asset(Assets.svg.asterisk24pass),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                  textAlign: TextAlign.center,
                  "Придумайте новый пароль",
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
              decoration: InputDecoration(
                errorText: _errorValidation,
                isDense: true,
                hintText: 'Новый пароль',
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: AppColors.mainGreen,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              onChanged: (val) {
                if (val.isNotEmpty) {
                  setState(() {
                    _isActive1 = true;
                  });
                } else {
                  setState(() {
                    _isActive1 = false;
                  });
                }
              },
              controller: _controllerRepeat,
              autofocus: true,
              enabled: true,
              decoration: InputDecoration(
                errorText: _errorValidation,
                isDense: true,
                hintText: 'Повторите пароль',
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
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
