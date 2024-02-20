import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_all_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/grid_view_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/tab_bar_category.dart';

class ComputerAccessoriesSection extends StatelessWidget {
  const ComputerAccessoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomExpandedWidgets(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabBarCategoryWidgets(
                  text: 'Computer Accessories', isShow: false),
              CustomAllProduct(),
            ],
          ),
        ),
        SizedBox(height: 26),
        ListProductToo(),
      ],
    );
  }
}
