

import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class HeaderTopTable extends StatelessWidget {
  const HeaderTopTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .71,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: const BoxDecoration(
        color: AppColor.kGray50,
        border: Border.symmetric(
            vertical: BorderSide(color: AppColor.kGray100, width: 1)),
      ),
      child: Row(
        children: [
          Text(
            'Products',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .2,
          ),
          Text(
            'Price',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
          const Spacer(),
          Text(
            'Quantity',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
          const Spacer(
            flex: 2,
          ),
          Text(
            'Sub-Total',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
        ],
      ),
    );
  }
}
