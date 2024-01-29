import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/hot_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item.dart';
import 'package:shope_web/features/home/presentation/view/widgets/of_discount.dart';
import 'package:shope_web/features/home/presentation/view/widgets/sold_out.dart';
import 'package:shope_web/features/home/presentation/view_model/item_product_model.dart';

class CustomItemProduct extends StatelessWidget {
  const CustomItemProduct({
    super.key,
    required this.itemProductModel,
  });

  final ItemProductModel itemProductModel;

  // final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(1, 1),
      children: [
        if (itemProductModel.isDiscount == true) ...[
          OfDiscount(discount: itemProductModel.ofDiscount)
        ] else if (itemProductModel.isSold == true) ...[
          const SoldOutWidgets()
        ] else if (itemProductModel.isHot == true) ...[
          const HotWidgets()
        ],
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Item(itemProductModel: itemProductModel),
            ],
          ),
        ),
      ],
    );
  }
}
