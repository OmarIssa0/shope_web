
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class RowDivider extends StatelessWidget {
  const RowDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          endIndent: 8,
          color: AppColor.kGray100,
        )),
        Text(
          'or',
          style: AppStyles.styleRegular14(context, color: AppColor.kGray500),
        ),
        const Expanded(
            child: Divider(
          indent: 8,
          color: AppColor.kGray100,
        )),
      ],
    );
  }
}
