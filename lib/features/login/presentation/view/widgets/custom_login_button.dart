import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class CustomLoginButtonLogin extends StatelessWidget {
  const CustomLoginButtonLogin({
    super.key,
    required this.title,
    required this.function,
    this.color,
  });
  final Function function;
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColor.kPrimary500,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
        onPressed: () {
          function();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppStyles.styleBold14(context, color: AppColor.kWhite),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, color: AppColor.kWhite)
            ],
          ),
        ));
  }
}
