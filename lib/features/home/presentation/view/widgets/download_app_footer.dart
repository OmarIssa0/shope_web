import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';

class DownloadAppFooter extends StatelessWidget {
  const DownloadAppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DOWNLOAD APP',
            style: AppStyles.styleMedium16(context, color: AppColor.kWhite),
          ),
          const SizedBox(height: 24),
          Image.asset(Assets.imagesMobileApp),
          const SizedBox(height: 12),
          Image.asset(Assets.imagesMobileAppIos),
        ],
      ),
    );
  }
}
