import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view_model/model/row_info_cart_totals_model.dart';

class RowInfoCartTotals extends StatelessWidget {
  const RowInfoCartTotals({super.key, required this.rowInfoCartTotalsModel});

  final RowInfoCartTotalsModel rowInfoCartTotalsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          rowInfoCartTotalsModel.title,
          style: AppStyles.styleRegular14(context, color: AppColor.kGray600),
        ),
        Text(
          rowInfoCartTotalsModel.subTitle,
          style: AppStyles.styleMedium14(context, color: AppColor.kGray900),
        ),
      ],
    );
  }
}
