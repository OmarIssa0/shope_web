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
        leading: SvgPicture.asset(
          image,
          height: 26,
        ),
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(title,
              style:
                  AppStyles.styleMedium14(context, color: AppColor.kGray900)),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            subTitle,
            style: AppStyles.styleRegular12(context, color: AppColor.kGray600),
          ),
        ),
      ),
    );
  }
}
