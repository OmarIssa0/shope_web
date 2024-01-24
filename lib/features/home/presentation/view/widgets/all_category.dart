
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kGray50,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 14),
        child: Row(children: [
          Text(
            'All Category',
            style: AppStyles.styleMedium14(context, color: AppColor.kGray900),
          ),
          const SizedBox(width: 8),
          Transform.rotate(
              angle: 1.5779633,
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColor.kGray300,
                size: 12,
              ))
        ]),
      ),
    );
  }
}
