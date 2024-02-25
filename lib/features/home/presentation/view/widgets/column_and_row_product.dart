import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_view_item_product.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class ColumnAndRowProduct extends StatelessWidget {
  const ColumnAndRowProduct({
    super.key,
  });

  get passedCategory => null;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    final List<ProductModel> productList = passedCategory == 'Phone'
        ? productProvider.getProduct
        : productProvider.findByCategory(catName: 'Phone');

//
    final List<ProductModel> productListToo = passedCategory == 'Tv & Homes'
        ? productProvider.getProduct
        : productProvider.findByCategory(catName: 'Tv & Homes');
    return Column(
      children: [
        const SizedBox(height: 35),
        // ListViewItemProduct(),
        const SizedBox(height: 40),
        ListViewItemProduct(
          children: [
            Row(
              children: productList
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: ItemProduct(productId: e.productId),
                      ))
                  .toList(),
            ),
            Row(
              children: productListToo
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: ItemProduct(productId: e.productId),
                      ))
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }
}
