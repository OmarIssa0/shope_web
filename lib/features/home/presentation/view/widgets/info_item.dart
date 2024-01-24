
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view_model/info_heder_model.dart';

class InfoItemHeder extends StatelessWidget {
  const InfoItemHeder({super.key, required this.infoHederModel});

  final InfoHederModel infoHederModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(infoHederModel.imageIcon),
        const SizedBox(width: 6),
        Text(
          infoHederModel.title,
          style: AppStyles.styleRegular14(context, color: AppColor.kGray600),
        ),
      ],
    );
  }
}
