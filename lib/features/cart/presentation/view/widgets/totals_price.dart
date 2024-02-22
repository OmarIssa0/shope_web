import 'package:flutter/material.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/row_info_cart_totals.dart';
import 'package:shope_web/features/cart/presentation/view_model/row_info_cart_totals_model.dart';

class TotalsPriceList extends StatelessWidget {
  const TotalsPriceList({super.key});

  static const item = [
    RowInfoCartTotalsModel(title: 'Sub-total', subTitle: r'$320'),
    RowInfoCartTotalsModel(title: 'Shipping', subTitle: 'Free'),
    RowInfoCartTotalsModel(title: 'Discount', subTitle: r'$24'),
    RowInfoCartTotalsModel(title: 'Tax', subTitle: r'$61.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: item
          .map((e) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: RowInfoCartTotals(rowInfoCartTotalsModel: e),
              ))
          .toList(),
    );
  }
}
