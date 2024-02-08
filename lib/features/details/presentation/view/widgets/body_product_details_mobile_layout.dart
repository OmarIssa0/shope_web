import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/details/presentation/view/widgets/amount_and_discount.dart';
import 'package:shope_web/features/details/presentation/view/widgets/in_stock_and_brand_box_product_details.dart';
import 'package:shope_web/features/details/presentation/view/widgets/row_box_count_and_button_and_card.dart';
import 'package:shope_web/features/details/presentation/view/widgets/title_and_description_details_mobile_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class BodyProductDetailsMobileLayout extends StatelessWidget {
  const BodyProductDetailsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Column(
        children: [
          const TitleAndDescriptionDetailsMobileLayout(),
          const Divider(color: AppColor.kGray100, height: 44),
          const AmountAndDiscount(),
          const SizedBox(height: 5),
          const RowBoxCountAndButtonAddCart(),
          const Divider(color: AppColor.kGray100, height: 35),
          const InStockAndBrandBoxProductDetails(),
          const Divider(color: AppColor.kGray100, height: 35),
          Text(
            'The most powerful MacBook Pro ever is here. With the blazing-fast M1 Pro or M1 Max chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR display, the best camera and audio ever in a Mac notebook, and all the ports you need. he first notebook of its kind, this MacBook Pro is a beast. M1 Pro takes the exceptional performance of the M1 architecture to a whole new level for pro users.',
            maxLines: 100,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular18(context, color: AppColor.kGray600),
          ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }
}
