import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/home/presentation/view/widgets/best_item_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_view_item_product.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class ItemBestDealsProduct extends StatelessWidget {
  const ItemBestDealsProduct({super.key});

  get passedCategory => null;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    final List<ProductModel> productList = passedCategory == 'TV & Homes'
        ? productProvider.getProduct
        : productProvider.findByCategory(catName: 'TV & Homes');

//
    final List<ProductModel> productListToo = passedCategory == 'Phone'
        ? productProvider.getProduct
        : productProvider.findByCategory(catName: 'Phone');
    return CustomExpandedWidgets(
      child: ScrollConfiguration(
        // scrollDirection: Axis.horizontal,
        behavior: AppScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(),
          child: Row(
            children: [
              // productListToo[0].productId == null
              //     ? const SizedBox.shrink()
              //     : BestItemProduct(
              //         productId: productListToo[0].productId,
              //       ),
              Column(
                children: [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
