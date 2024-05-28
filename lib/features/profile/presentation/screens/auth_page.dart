// ignore_for_file: deprecated_member_use

import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/masks_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/profile/bloc/auth_cubit/auth_cubit.dart';
import 'package:almaguide_flutter/features/profile/bloc/profile_cubit/profile_cubit.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/app_form_field.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_bottom_sheet.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/snack_bar_status.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

final TextEditingController mailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _AuthScreenState extends State<AuthScreen> {
  @override
  void dispose() {
    mailController.clear();
    passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leadingWidth: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            S.of(context).sign_in,
            style: ts(TS.s24w700).copyWith(color: Colors.black),
          ),
        ),
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            sucess: () {
              SnackBarNotifier().showSuccess(context, S.of(context).success);
              context.router.pop();
              context.read<ProfileCubit>().initProfile();
            },
            errorState: (message) {
              SnackBarNotifier().showError(context, S.of(context).error);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(initialState: (initialState) {
            return SizedBox(
              height: 1.sh,
              child: Padding(
                padding: const EdgeInsets.all(16).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppFormField(
                      controller: mailController,
                      hintText: S.of(context).mail,
                      mask: '',
                      maxLength: 30,
                      inputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 20.r,
                    ),
                    AppFormField(
                      controller: passwordController,
                      hintText: S.of(context).password,
                      mask: '',
                      maxLength: 20,
                      inputType: TextInputType.visiblePassword,
                      inputFormatters: [passwordMaskFormatter],
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 20.r,
                    ),
                    TextButton(
                      onPressed: () {
                        context.router.push(const ForgotPasswordRoute());
                      },
                      child: Text(
                        S.of(context).forget_a_password,
                        style: ts(TS.s14w400)
                            .copyWith(color: AppColors.buttonBlue),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 150).r,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16).r,
                            child: SizedBox(
                                height: 43.h,
                                child: CustomButton(
                                    isActive: true,
                                    onPressed: () {
                                      context.read<AuthCubit>().signIn(
                                          email: mailController.text,
                                          password: passwordController.text);
                                    },
                                    buttonText: S.of(context).sign_in)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8).r,
                            child: RichText(
                              text: TextSpan(
                                style: ts(TS.s14w400)
                                    .copyWith(color: AppColors.textGrey),
                                children: [
                                  TextSpan(
                                      text: S.of(context).dont_have_account),
                                  WidgetSpan(
                                    child: GestureDetector(
                                      onTap: () {
                                        context.router
                                            .popAndPush(const SignUpRoute());
                                      },
                                      child: Text(
                                        ' ${S.of(context).registration}',
                                        style: ts(TS.s14w400).copyWith(
                                            color: AppColors.buttonBlue),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }, orElse: () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          });
        },
      ),
    );
  }
}
