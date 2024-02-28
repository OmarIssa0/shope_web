import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.title,
    required this.controller,
    required this.textInputType,
    this.prefix,
    this.validator,
    this.focusNode,
    this.onFieldSubmitted,
    this.textInputAction,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String title;
  final Widget? prefix;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      cursorColor: AppColor.kSecondary700,
      controller: controller,
      keyboardType: textInputType,
      focusNode: focusNode,
      decoration: InputDecoration(
        prefixIcon: prefix,
        hintText: title,
        hintFadeDuration: Durations.short2,
        hintStyle: const TextStyle(
          color: AppColor.kGray600,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'PublicSans',
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedErrorBorder: buildBorder(),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: const BorderSide(color: AppColor.kSecondary700)),
      ),
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(2),
    borderSide: const BorderSide(
      color: AppColor.kGray100,
    ),
  );
}
