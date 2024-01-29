
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class ShopWithCategory extends StatelessWidget {
  const ShopWithCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Shop with Categorys',
              style:
                  AppStyles.styleSemiBold32(context, color: AppColor.kGray900))
        ],
      ),
    );
  }
}
