import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/box_info_item.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class BoxInfo extends StatelessWidget {
  const BoxInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 108,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColor.kGray100),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: const BoxInfoItemWidgets(),
      ),
    );
  }
}
