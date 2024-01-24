import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_item.dart';
import 'package:shope_web/features/home/presentation/view_model/info_heder_model.dart';

class ListInfoHeder extends StatelessWidget {
  const ListInfoHeder({super.key});

  static const items = [
    InfoHederModel(imageIcon: Assets.imagesMapPinLine, title: 'Track Order'),
    InfoHederModel(
        imageIcon: Assets.imagesArrowsCounterClockwise, title: 'Compare'),
    InfoHederModel(
        imageIcon: Assets.imagesHeadphones, title: 'Customer Support'),
    InfoHederModel(imageIcon: Assets.imagesInfo, title: 'Need Help'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => Padding(
                padding: const EdgeInsets.only(left: 24),
                child: InfoItemHeder(
                  infoHederModel: e,
                ),
              ))
          .toList(),
    );
  }
}
