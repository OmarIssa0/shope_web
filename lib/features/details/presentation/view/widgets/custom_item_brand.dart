import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/core/utils/size_config.dart';

class CustomItemBrand extends StatelessWidget {
  const CustomItemBrand({
    super.key,
    required this.text,
    required this.subTitle,
    this.color,
  });

  final String text, subTitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width > SizeConfig.tablet
          ? MediaQuery.sizeOf(context).width / 6
          : MediaQuery.sizeOf(context).width * .4,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppStyles.styleRegular14(context, color: AppColor.kGray600),
          ),
          Text(
            subTitle,
            style: AppStyles.styleSemiBold14(context,
                color: color ?? AppColor.kGray900),
          ),
        ],
      ),
    );
  }
}
