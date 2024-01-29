import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view_model/list_tab_bar_category_mode.dart';

class ActiveTabBar extends StatelessWidget {
  const ActiveTabBar(
      {super.key,
      required this.listTabBarCategoryModel,
      required this.isActive});

  final ListTabBarCategoryModel listTabBarCategoryModel;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(8),
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        border: Border(
          bottom: isActive
              ? const BorderSide(width: 2, color: AppColor.kPrimary500)
              : const BorderSide(width: 0, color: Colors.transparent),
        ),
      ),
      child: isActive
          ? Text(
              listTabBarCategoryModel.titleTabBar,
              style:
                  AppStyles.styleSemiBold14(context, color: AppColor.kGray900),
            )
          : Text(
              listTabBarCategoryModel.titleTabBar,
              style:
                  AppStyles.styleRegular14(context, color: AppColor.kGray600),
            ),
    );
  }
}
