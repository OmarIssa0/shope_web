import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/box_info_layout_mobile.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class CustomBoxInfoMobileLayout extends StatelessWidget {
  const CustomBoxInfoMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomExpandedWidgets(
      child: Row(
        children: [
          Column(
            children: [
              BoxInfoMobileLayout(
                image: Assets.imagesPackage,
                title: 'Fasted Delivery',
                subTitle: 'Delivery in 24/H',
              ),
              BoxInfoMobileLayout(
                image: Assets.imagesTrophy,
                title: '24 Hours Returny',
                subTitle: '100% money-back guarantee',
              ),
            ],
          ),
          Column(
            children: [
              BoxInfoMobileLayout(
                image: Assets.imagesCreditCard,
                title: 'Secure Payment',
                subTitle: 'Your money is safe',
              ),
              BoxInfoMobileLayout(
                image: Assets.imagesHeadphonesBoxInfo,
                title: 'Support 24/7',
                subTitle: 'Live contact/message',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
