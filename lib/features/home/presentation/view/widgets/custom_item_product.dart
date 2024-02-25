import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item.dart';
import 'package:shope_web/features/home/presentation/view/widgets/of_discount.dart';
import 'package:shope_web/features/home/presentation/view/widgets/sold_out.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class CustomItemProduct extends StatelessWidget {
  const CustomItemProduct({
    super.key,
    required this.productId,
  });

  final String productId;

  // final bool isActive;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct = productProvider.findByProductId(productId);
    // final cartProvider = Provider.of<CartProvider>(context);

    return Stack(
      alignment: const Alignment(1, 1),
      children: [
        if (getCurrProduct?.off != null) ...[
          OfDiscount(discount: getCurrProduct?.off ?? '')
          // OfDiscount(discount: itemProductModel.ofDiscount)
        ] else if (getCurrProduct?.inStock == true) ...[
          const SoldOutWidgets()
        ],
        // else if (getCurrProduct. == true) ...[
        //   const HotWidgets()
        // ],
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Item(productId: productId),
            ],
          ),
        ),
      ],
    );
  }
}
