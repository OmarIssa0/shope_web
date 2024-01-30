import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesLogoOrangePNG),
        const SizedBox(width: 8),
        Text('CLICON',
            style: AppStyles.styleBold32(context, color: AppColor.kWhite)),
      ],
    );
  }
}
