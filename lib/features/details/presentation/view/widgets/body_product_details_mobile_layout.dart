import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/details/presentation/view/widgets/amount_and_discount.dart';
import 'package:shope_web/features/details/presentation/view/widgets/in_stock_and_brand_box_product_details.dart';
import 'package:shope_web/features/details/presentation/view/widgets/row_box_count_and_button_and_card.dart';
import 'package:shope_web/features/details/presentation/view/widgets/title_and_description_details_mobile_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class BodyProductDetailsMobileLayout extends StatelessWidget {
  const BodyProductDetailsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final getCurrProduct = productProvider.findByProductId(productId);
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
            getCurrProduct?.productDescription ?? '',
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
