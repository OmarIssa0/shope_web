import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/details/presentation/view/widgets/custom_item_brand.dart';

class InStockAndBrandBoxProductDetails extends StatelessWidget {
  const InStockAndBrandBoxProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomItemBrand(text: 'Sku: ', subTitle: 'A264671'),
            // SizedBox(width: 18),
            CustomItemBrand(
              text: 'Availability: ',
              subTitle: 'In Stock',
              color: AppColor.kSuccess500,
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomItemBrand(text: 'Brand: ', subTitle: 'Apple'),
            // SizedBox(width: 18),
            CustomItemBrand(text: 'Category: ', subTitle: 'Electronics'),
          ],
        )
      ],
    );
  }
}
