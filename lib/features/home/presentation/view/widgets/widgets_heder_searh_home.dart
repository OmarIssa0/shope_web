import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_logo.dart';
import 'package:shope_web/features/home/presentation/view/widgets/text_filed_search_home.dart';

class WidgetsHederSearchHome extends StatelessWidget {
  const WidgetsHederSearchHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomLogo(image: Assets.imagesLogoPNG),
        SearchTextFiled(),
        Badge(
            label: Text(
              '2',
              style: TextStyle(color: AppColor.kSecondary700),
            ),
            backgroundColor: Colors.white,
            child: Icon(IconlyLight.buy, color: AppColor.kWhite)),
        SizedBox(width: 24),
        Icon(IconlyLight.heart, color: AppColor.kWhite),
        SizedBox(width: 24),
        Icon(IconlyLight.profile, color: AppColor.kWhite),
      ],
    );
  }
}
