import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/search/presentation/view/widgets/item_product_search.dart';

class CustomGridViewSearchView extends StatelessWidget {
  const CustomGridViewSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < SizeConfig.tablet) {
      return Expanded(
        child: DynamicHeightGridView(
          itemCount: 30,
          crossAxisCount:
              // MediaQuery.sizeOf(context).width < SizeConfig.tablet ? 1 : 2,
              1,
          mainAxisSpacing: 0,
          builder: (context, index) {
            return const ItemProductSearch();
          },
        ),
      );
    } else if (MediaQuery.sizeOf(context).width >= SizeConfig.desktop ||
        MediaQuery.sizeOf(context).width < SizeConfig.desktop) {
      return Expanded(
        child: DynamicHeightGridView(
          itemCount: 30,
          crossAxisCount:
              MediaQuery.sizeOf(context).width >= SizeConfig.desktop ? 3 : 2,
          // 2,
          mainAxisSpacing: 0,
          builder: (context, index) {
            return const ItemProductSearch();
          },
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
