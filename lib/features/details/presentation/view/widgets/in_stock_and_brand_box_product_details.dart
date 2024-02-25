import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/details/presentation/view/widgets/custom_item_brand.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class InStockAndBrandBoxProductDetails extends StatelessWidget {
  const InStockAndBrandBoxProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final getCurrProduct = productProvider.findByProductId(productId);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // CustomItemBrand(text: 'Sku: ', subTitle: getCurrProduct!.productId),
            // SizedBox(width: 18),
            CustomItemBrand(
                text: 'Brand: ', subTitle: getCurrProduct?.brand ?? ''),
            getCurrProduct?.inStock == true
                ? const CustomItemBrand(
                    text: 'Availability: ',
                    subTitle: 'Sold out',
                    color: AppColor.kDanger500)
                : const CustomItemBrand(
                    text: 'Availability: ',
                    subTitle: 'In Stock',
                    color: AppColor.kSuccess500,
                  ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(width: 18),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SearchView.idPage,
                    arguments: getCurrProduct.productCategory);
              },
              child: CustomItemBrand(
                  text: 'Category: ',
                  subTitle: getCurrProduct!.productCategory),
            ),
          ],
        )
      ],
    );
  }
}
