import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
    required this.image,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.height,
  });

  final String image;
  final MainAxisAlignment mainAxisAlignment;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: height,
        ),
        const SizedBox(width: 8),
        Text('CLICON',
            style: AppStyles.styleBold32(context, color: AppColor.kWhite)),
      ],
    );
  }
}
