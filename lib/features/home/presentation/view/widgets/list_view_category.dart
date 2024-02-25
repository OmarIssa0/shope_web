import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_category.dart';
import 'package:shope_web/features/home/presentation/view_model/item_category_model.dart';

class ListCategoryItem extends StatelessWidget {
  const ListCategoryItem({super.key});

  static const items = [
    ItemCategoryModel(
        image: Assets.imagesCategotyPcPNG, titleCategory: 'pc & Laptop'),
    ItemCategoryModel(
        image: Assets.imagesCategotyPhonePNG, titleCategory: 'SmartPhone'),
    ItemCategoryModel(
        image: Assets.imagesCategotyHeadPhonePNG, titleCategory: 'Headphones'),
    ItemCategoryModel(
        image: Assets.imagesCategotyAccessoriesPNG,
        titleCategory: 'Accessories'),
    ItemCategoryModel(
        image: Assets.imagesCategotyCamPNG, titleCategory: 'Camera & Photo'),
    ItemCategoryModel(
        image: Assets.imagesCategotyTvPNG, titleCategory: 'TV & Homes'),
  ];

  @override
  Widget build(BuildContext context) {
    // return CustomExpandedWidgets(
    //     child: SizedBox(
    //   height: 240,
    //   width: double.infinity,
    //   child: CustomGridView(
    //       crossAxisCount: 1,
    //       mainAxisSpacing: 18,
    //       crossAxisSpacing: 0,
    //       childAspectRatio: 240 / 205,
    //       children:
    //           items.map((e) => ItemCategory(itemCategoryModel: e)).toList()),
    // ));
    return CustomExpandedWidgets(
      child: ScrollConfiguration(
        // scrollDirection: Axis.horizontal,
        behavior: AppScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: items
                .map((e) => Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: ItemCategory(itemCategoryModel: e),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
