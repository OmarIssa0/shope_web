import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_item_product.dart';
import 'package:shope_web/features/home/presentation/view_model/item_product_model.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key, required this.itemProductModel});
  final ItemProductModel itemProductModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 300,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: AppColor.kGray100,
          ),
        ),
      ),
      child: CustomItemProduct(
        itemProductModel: itemProductModel,
      ),
    );
  }
}
