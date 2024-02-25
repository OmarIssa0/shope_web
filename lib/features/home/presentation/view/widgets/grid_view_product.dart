import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_product.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class ListProductToo extends StatelessWidget {
  const ListProductToo({super.key});

  // get passedCategory => null;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    String? passedCategory =
        ModalRoute.of(context)!.settings.arguments as String?;

    final List<ProductModel> productList = passedCategory == null
        ? productProvider.getProduct
        : productProvider.findByCategory(catName: passedCategory);
    return CustomExpandedWidgets(
      child: SizedBox(
        width: double.infinity,
        height: 656,
        child: CustomGridView(
          crossAxisCount: 2,
          childAspectRatio: 320 / 234,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: productList
              .map((e) => ItemProduct(
                    productId: e.productId,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
