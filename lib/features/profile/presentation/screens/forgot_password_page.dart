import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/profile/bloc/auth_cubit/auth_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

TextEditingController _controller = TextEditingController();
bool _isActive = false;

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return state.map(
        sucess: (success) => Container(),
        initialState: (val) => Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton: ElevatedButton(
            onPressed: _isActive
                ? () {
                    context
                        .read<AuthCubit>()
                        .forgotPassword(_controller.text, context);
                  }
                : null,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300.w, 40.h),
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              // AppColors.buttonBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Продолжить'),
          ),
          appBar: AppBar(
            leading: IconButton(
              onPressed: ()=>
                context.router.popForced()
              ,
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
                'Забыли пароль',
                style: ts(TS.s18w600).copyWith(color: Colors.black),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(16.h),
            child: TextFormField(
              controller: _controller,
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
              autofocus: true,
              enabled: true,
              decoration: const InputDecoration(
                isDense: true,
                hintText: 'Почта',
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
          ),
        ),
        loadingState: (load) => Container(
          color: Colors.white,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        errorState: (error) => ScaffoldMessenger(child: Text(error.message)),
      );
    });
  }
}
