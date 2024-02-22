import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_all_product.dart';
import 'package:shope_web/features/home/presentation/view_model/item_category_model.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';

class TopCategoryFooter extends StatelessWidget {
  const TopCategoryFooter({
    super.key,
  });

  static List item = [
    const ItemCategoryModel(titleCategory: 'Computer & Laptop'),
    const ItemCategoryModel(titleCategory: 'Phone'),
    const ItemCategoryModel(titleCategory: 'Headphone'),
  ];
  static List itemToo = [
    const ItemCategoryModel(titleCategory: 'Computer & Laptop'),
    const ItemCategoryModel(titleCategory: 'TV & Homes'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Top Category',
          style: AppStyles.styleMedium16(context, color: AppColor.kWhite),
        ),
        const SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: item
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ItemTextCategory(itemCategoryModel: e),
                ),
              )
              .toList(),
        ),
        // const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 24,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: AppColor.kWarning500,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Accessories',
              style: AppStyles.styleMedium14(context, color: AppColor.kWhite),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: itemToo
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ItemTextCategory(itemCategoryModel: e),
                ),
              )
              .toList(),
        ),
        const CustomAllProduct(
          color: AppColor.kWarning500,
        )
      ],
    );
  }
}

class ItemTextCategory extends StatelessWidget {
  const ItemTextCategory({super.key, required this.itemCategoryModel});

  final ItemCategoryModel itemCategoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchView.idPage,
            arguments: itemCategoryModel.titleCategory);
      },
      child: Text(
        itemCategoryModel.titleCategory,
        style: AppStyles.styleMedium16(context, color: AppColor.kGray400),
      ),
    );
  }
}
