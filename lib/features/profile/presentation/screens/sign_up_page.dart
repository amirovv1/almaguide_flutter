// ignore_for_file: deprecated_member_use

import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/masks_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/profile/bloc/profile_cubit/profile_cubit.dart';
import 'package:almaguide_flutter/features/profile/bloc/sign_up_cubit/sign_up_cubit.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/app_form_field.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_bottom_sheet.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/snack_bar_status.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController mailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController photo = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  File? _imageFile;
  final LocalFileSystem localFileSystem = const LocalFileSystem();

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imageFile = localFileSystem.file(image.path);
      });
    }
  }

//Image Picker function to get image from camera

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leadingWidth: 0, // this is also im

        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            S.of(context).registration,
            style: ts(TS.s24w700).copyWith(color: Colors.black),
          ),
        ),
      ),
      body: BlocConsumer<SignUpCubit, SignUpState>(
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
          return state.maybeWhen(initialState: (st) {
            return Padding(
              padding: const EdgeInsets.all(16).r,
              child: Column(
                children: [
                  AppFormField(
                    controller: nameController,
                    hintText: S.of(context).name,
                    mask: '',
                    maxLength: 30,
                    inputType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 20.r,
                  ),
                  AppFormField(
                    controller: phoneController,
                    hintText: S.of(context).number,
                    mask: '',
                    maxLength: 30,
                    inputType: TextInputType.phone,
                    inputFormatters: [maskFormatter],
                  ),
                  SizedBox(
                    height: 20.r,
                  ),
                  AppFormField(
                    controller: mailController,
                    hintText: S.of(context).mail,
                    mask: '',
                    maxLength: 40,
                    inputType: TextInputType.emailAddress,
                    inputFormatters: [emailMaskFormatter],
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
                  InkWell(
                    onTap: () async => await pickImage(),
                    child: _imageFile != null
                        ? Center(
                            child: Container(
                                width: 200.r,
                                height: 200.r,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r)),
                                child: Image.file(_imageFile!)),
                          )
                        : AppFormField(
                            isEnable: false,
                            controller: photo,
                            hintText: S.of(context).profile_photo_upload,
                            mask: '',
                            maxLength: 30,
                            inputType: TextInputType.visiblePassword,
                            inputFormatters: [passwordMaskFormatter],
                            isPassword: true,
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 85).r,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16).r,
                          child: SizedBox(
                              height: 43.h,
                              child: CustomButton(
                                  isActive: true,
                                  onPressed: () {
                                    context.read<SignUpCubit>().signUp(
                                        email: mailController.text,
                                        password: passwordController.text,
                                        name: nameController.text,
                                        phone: phoneController.text,
                                        image: _imageFile != null
                                            ? XFile(_imageFile!.path)
                                            : null);
                                  },
                                  buttonText: S.of(context).registration)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15).r,
                          child: RichText(
                            text: TextSpan(
                              style: ts(TS.s14w400)
                                  .copyWith(color: AppColors.textGrey),
                              children: [
                                TextSpan(text: S.of(context).have_account),
                                WidgetSpan(
                                  child: GestureDetector(
                                    onTap: () {
                                      context.router
                                          .popAndPush(const AuthRoute());
                                    },
                                    child: Text(
                                      S.of(context).sign_in,
                                      style: ts(TS.s14w400).copyWith(
                                          color: AppColors.buttonBlue),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }, orElse: () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          });
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
