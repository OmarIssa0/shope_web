import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/widgets/amount_and_discount.dart';
import 'package:shope_web/features/details/presentation/view/widgets/row_box_count_and_button_and_card.dart';
import 'package:shope_web/features/details/presentation/view/widgets/swiper_details_product_image.dart';
import 'package:shope_web/features/details/presentation/view/widgets/title_and_description.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class DetailsBodyProductDesktop extends StatelessWidget {
  const DetailsBodyProductDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomExpandedWidgets(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          SwiperDetailsProductImage(),
          SizedBox(width: 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndDescription(),
              SizedBox(height: 35),
              AmountAndDiscount(),
              SizedBox(height: 12),
              RowBoxCountAndButtonAddCart(),
            ],
          )
        ],
      ),
    );
  }
}
