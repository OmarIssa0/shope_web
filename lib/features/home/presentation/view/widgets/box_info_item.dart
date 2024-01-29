import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_list_tile_item.dart';

class BoxInfoItemWidgets extends StatelessWidget {
  const BoxInfoItemWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomListTileItem(
            image: Assets.imagesPackage,
            title: 'Fasted Delivery',
            subTitle: 'Delivery in 24/H'),
        // const SizedBox(width: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: AppColor.kGray100,
          width: 1,
        ),
        const SizedBox(width: 24),
        const CustomListTileItem(
            image: Assets.imagesTrophy,
            title: '24 Hours Return',
            subTitle: '100% money-back guarantee'),
        // const SizedBox(width: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: AppColor.kGray100,
          width: 1,
        ),
        const SizedBox(width: 24),
        const CustomListTileItem(
            image: Assets.imagesCreditCard,
            title: 'Secure Payment',
            subTitle: 'Your money is safe'),
        // const SizedBox(width: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: AppColor.kGray100,
          width: 1,
        ),
        const SizedBox(width: 24),
        const CustomListTileItem(
            image: Assets.imagesHeadphonesBoxInfo,
            title: 'Support 24/7',
            subTitle: 'Live contact/message'),
      ],
    );
  }
}
