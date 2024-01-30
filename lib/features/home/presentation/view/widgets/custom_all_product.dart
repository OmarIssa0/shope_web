
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class CustomAllProduct extends StatelessWidget {
  const CustomAllProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Browse All Product',
          style:
              AppStyles.styleSemiBold14(context, color: AppColor.kPrimary500),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.arrow_forward, color: AppColor.kPrimary500)
      ],
    );
  }
}
