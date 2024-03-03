import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/core/utils/size_config.dart';

class RowWishlistHeaderTable extends StatelessWidget {
  const RowWishlistHeaderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width > SizeConfig.desktop
          ? MediaQuery.sizeOf(context).width * .71
          : MediaQuery.sizeOf(context).width * .81,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: const BoxDecoration(
          color: AppColor.kGray50,
          border: Border.symmetric(
              vertical: BorderSide(color: AppColor.kGray100, width: 1))),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'PRODUCTS',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
          // SizedBox(width: MediaQuery.sizeOf(context).width * .21),
          const Spacer(flex: 4),
          Text(
            'PRICE',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
          // SizedBox(width: MediaQuery.sizeOf(context).height * .15),
          const Spacer(flex: 2),
          Text(
            'STOCK STATUS',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
          // SizedBox(width: MediaQuery.sizeOf(context).height * .1),
          const Spacer(flex: 3),
          Text(
            'ACTIONS',
            style: AppStyles.styleMedium12(context, color: AppColor.kGray700),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
