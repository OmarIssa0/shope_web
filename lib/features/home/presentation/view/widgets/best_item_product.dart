import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/hot_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/of_discount.dart';
import 'package:shope_web/features/home/presentation/view/widgets/title_and_subtite_and_button_product.dart';

class BestItemProduct extends StatelessWidget {
  const BestItemProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 600,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: Border(
          bottom: BorderSide(
            width: 1,
            color: AppColor.kGray100,
          ),
          top: BorderSide(
            width: 1,
            color: AppColor.kGray100,
          ),
          left: BorderSide(
            width: 1,
            color: AppColor.kGray100,
          ),
        ),
      ),
      child: const Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OfDiscount(),
                SizedBox(height: 6),
                HotWidgets(),
              ],
            ),
          ),
          TitleAndSubtitleAndButtonProduct(),
        ],
      ),
    );
  }
}
