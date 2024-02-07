import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_item_product.dart';
import 'package:shope_web/features/home/presentation/view_model/item_product_model.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key, required this.itemProductModel});
  final ItemProductModel itemProductModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, DetailsView.idPage);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const DetailsView(),
        ));
      },
      child: Container(
        width: 248,
        height: 300,
        clipBehavior: Clip.antiAlias,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: AppColor.kGray100,
            ),
          ),
        ),
        child: CustomItemProduct(
          itemProductModel: itemProductModel,
        ),
      ),
    );
  }
}
