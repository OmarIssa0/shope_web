import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view_model/item_category_model.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key, required this.itemCategoryModel});

  final ItemCategoryModel itemCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 205,
        height: 240,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE4E7E9)),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Column(
          children: [
            Flexible(child: Image.asset(itemCategoryModel.image)),
            const SizedBox(height: 16),
            Text(
              itemCategoryModel.titleCategory,
              style: AppStyles.styleMedium16(context, color: AppColor.kGray900),
            )
          ],
        ));
  }
}
