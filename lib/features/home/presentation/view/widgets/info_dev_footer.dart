import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class InfoDevFooter extends StatelessWidget {
  const InfoDevFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: AppColor.kGray300,
          height: 0,
        ),
        Container(
          color: AppColor.kGray900,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Center(
            child: Text(
              'Omar - E-commerce template © 2024. Development and programming',
              style:
                  AppStyles.styleRegular14(context, color: AppColor.kGray300),
            ),
          ),
        ),
      ],
    );
  }
}
