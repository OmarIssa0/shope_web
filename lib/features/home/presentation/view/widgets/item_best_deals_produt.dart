import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/best_item_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_view_item_product.dart';

class ItemBestDealsProduct extends StatelessWidget {
  const ItemBestDealsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: ScrollConfiguration(
        // scrollDirection: Axis.horizontal,
        behavior: AppScrollBehavior(),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: PageScrollPhysics(),
          child: Row(
            children: [
              BestItemProduct(),
              Column(
                children: [
                  ListViewItemProduct(),
                  ListViewItemProduct(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
