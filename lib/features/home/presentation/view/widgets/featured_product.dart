import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/column_and_row_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/tab_bar_category.dart';

class FeaturedProductWidgets extends StatelessWidget {
  const FeaturedProductWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: ScrollConfiguration(
        // scrollDirection: Axis.horizontal,
        behavior: AppScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(Assets.imagesBG, height: 716, width: 312),
              const SizedBox(width: 24),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBarCategoryWidgets(
                      text: 'Featured Products', isShow: true),
                  ColumnAndRowProduct(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
