import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class EngAndUsdRow extends StatelessWidget {
  const EngAndUsdRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
            style: AppStyles.styleRegular14(context, color: AppColor.kWhite)),
        const SizedBox(width: 6),
        Transform.rotate(
            angle: 1.5779633,
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColor.kGray300,
              size: 12,
            ))
      ],
    );
  }
}
