
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class CustomListTileItem extends StatelessWidget {
  const CustomListTileItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title,
            style: AppStyles.styleMedium16(context, color: AppColor.kGray900)),
        subtitle: Text(
          subTitle,
          style: AppStyles.styleRegular14(context, color: AppColor.kGray600),
        ),
      ),
    );
  }
}
