import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class AmountAndDiscount extends StatelessWidget {
  const AmountAndDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          r'$1699',
          style:
              AppStyles.styleSemiBold24(context, color: AppColor.kSecondary500),
        ),
        const SizedBox(width: 5),
        Text(
          r'$1999.00',
          style: AppStyles.styleRegular18(context, color: AppColor.kGray500)
              .copyWith(decoration: TextDecoration.lineThrough),
        ),
        const SizedBox(width: 13),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: AppColor.kWarning400,
          ),
          child: Text(
            '21% OFF',
            style: AppStyles.styleSemiBold14(context, color: AppColor.kGray900),
          ),
        ),
      ],
    );
  }
}
