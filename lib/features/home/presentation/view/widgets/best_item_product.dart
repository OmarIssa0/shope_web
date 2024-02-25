import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/hot_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/of_discount.dart';
import 'package:shope_web/features/home/presentation/view/widgets/title_and_subtite_and_button_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class BestItemProduct extends StatelessWidget {
  const BestItemProduct({
    super.key,
    required this.productId,
  });
  final String productId;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    final getCurrProduct = productProvider.findByProductId(productId);
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
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OfDiscount(discount: getCurrProduct?.off ?? ''),
                const SizedBox(height: 6),
                const HotWidgets(),
              ],
            ),
          ),
          // Spacer(),
          TitleAndSubtitleAndButtonProduct(productId: productId),
        ],
      ),
    );
  }
}
