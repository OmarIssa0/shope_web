import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/text_filed_search_home.dart';

class WidgetsHederSearchHome extends StatelessWidget {
  const WidgetsHederSearchHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesLogo),
        const SizedBox(width: 6),
        Text(
          'CLICON',
          style: AppStyles.styleBold32(context, color: AppColor.kWhite),
        ),
        const SearchTextFiled(),
        const Icon(IconlyLight.buy, color: AppColor.kWhite),
        const SizedBox(width: 24),
        const Icon(IconlyLight.heart, color: AppColor.kWhite),
        const SizedBox(width: 24),
        const Icon(IconlyLight.profile, color: AppColor.kWhite),
      ],
    );
  }
}
