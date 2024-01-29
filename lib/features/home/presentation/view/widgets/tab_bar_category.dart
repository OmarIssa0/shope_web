import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_tab_bar_category.dart';

class TabBarCategoryWidgets extends StatelessWidget {
  const TabBarCategoryWidgets({
    super.key,
    required this.text,
    required this.isShow,
  });

  final String text;
  final bool isShow;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleSemiBold24(context, color: AppColor.kGray900),
        ),
        // const Expanded(child: SizedBox()),
        const SizedBox(width: 16),
        isShow ? const ListTabBarCategory() : const SizedBox(),
        const SizedBox(width: 16),
      ],
    );
  }
}
