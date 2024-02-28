import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_item.dart';
import 'package:shope_web/features/home/presentation/view_model/info_heder_model.dart';
import 'package:shope_web/features/track_order/presentation/view/track_order_view.dart';

class ListInfoHeder extends StatelessWidget {
  const ListInfoHeder({super.key});

  static List<InfoHederModel> items = [
    InfoHederModel(
      imageIcon: Assets.imagesMapPinLine,
      title: 'Track Order',
      function: (BuildContext context) {
        Navigator.pushNamed(context, TrackOrderView.idPage);
      },
    ),
    InfoHederModel(
      imageIcon: Assets.imagesArrowsCounterClockwise,
      title: 'Compare',
      function: () {},
    ),
    InfoHederModel(
      imageIcon: Assets.imagesHeadphones,
      title: 'Customer Support',
      function: () {},
    ),
    InfoHederModel(
      imageIcon: Assets.imagesInfo,
      title: 'Need Help',
      function: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => GestureDetector(
                onTap: () {
                  e.function(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: InfoItemHeder(
                    infoHederModel: e,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
