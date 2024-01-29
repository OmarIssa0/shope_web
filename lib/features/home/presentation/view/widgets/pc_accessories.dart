import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/grid_view_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/tab_bar_category.dart';

class ComputerAccessoriesSection extends StatelessWidget {
  const ComputerAccessoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomExpandedWidgets(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TabBarCategoryWidgets(
                  text: 'Computer Accessories', isShow: false),
              Row(
                children: [
                  Text(
                    'Browse All Product',
                    style: AppStyles.styleSemiBold14(context,
                        color: AppColor.kPrimary500),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.arrow_forward, color: AppColor.kPrimary500)
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 26),
        const ListProductToo(),
      ],
    );
  }
}
