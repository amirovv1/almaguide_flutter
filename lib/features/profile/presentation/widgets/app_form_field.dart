import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFormField extends StatelessWidget {
  const AppFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.mask,
      this.onChange,
      required this.maxLength,
      required this.inputType,
      this.inputFormatters, this.isPassword = false,  this.isEnable = true});
  final TextEditingController controller;
  final String hintText;
  final String? mask;
  final void Function(String)? onChange;
  final int maxLength;
  final TextInputType inputType;
  final List<TextInputFormatter>? inputFormatters;
  final bool isPassword ;  final bool isEnable ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnable,
      obscuringCharacter: '*',
      obscureText: isPassword,
      inputFormatters: inputFormatters,
      keyboardType: inputType,

      maxLength: maxLength,
      onChanged: onChange,

      controller: controller,
      decoration: InputDecoration(
        label: Text(hintText),
        alignLabelWithHint: true,
        counterText: '',
        hintText: hintText,
        hintStyle: ts(TS.s14w600),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16).r,
          borderSide: const BorderSide(color: AppColors.textGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16).r,
          borderSide: const BorderSide(color: AppColors.textGrey),
        ),
        
      ),
     
    );
  }
}
