import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class BoxInfoMobileLayout extends StatelessWidget {
  const BoxInfoMobileLayout(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image, title, subTitle;

  // final double widthTop, widthLeft, widthRight, widthBottom;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      width: MediaQuery.sizeOf(context).width * .44,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: AppColor.kGray100),
          left: BorderSide(width: 1, color: AppColor.kGray100),
          right: BorderSide(width: 1, color: AppColor.kGray100),
          top: BorderSide(width: 1, color: AppColor.kGray100),
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
          height: 25,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: AppStyles.styleMedium14(context, color: AppColor.kGray900),
          ),
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
