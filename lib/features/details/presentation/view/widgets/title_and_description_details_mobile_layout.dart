import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class TitleAndDescriptionDetailsMobileLayout extends StatelessWidget {
  const TitleAndDescriptionDetailsMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Text(
          '2020 Apple MacBook Pro with Apple sM1 Chip (13-inch, 8GB RAM ,256GB SSD Storage) - Space Gray',
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleSemiBold22(context, color: AppColor.kGray900),
        ),
      ],
    );
  }
}
