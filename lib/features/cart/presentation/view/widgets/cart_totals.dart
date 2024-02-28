import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/row_info_cart_totals.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/totals_price.dart';
import 'package:shope_web/features/cart/presentation/view_model/model/row_info_cart_totals_model.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';
import 'package:shope_web/features/track_order/presentation/view/track_order_view.dart';

class CartTotals extends StatelessWidget {
  const CartTotals({super.key, this.isButtonShow});

  final bool? isButtonShow;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final productProvider = Provider.of<ProductProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        // height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColor.kGray100, width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cart Totals ',
              style: AppStyles.styleMedium18(context, color: AppColor.kGray900),
            ),
            const SizedBox(height: 20),
            const TotalsPriceList(),
            RowInfoCartTotals(
                rowInfoCartTotalsModel: RowInfoCartTotalsModel(
                    title: 'Sub-total',
                    subTitle:
                        '\$${cartProvider.getTotal(productProvider: productProvider, shipping: 0, discount: 1, tac: 0).toStringAsFixed(2)}')),
            const Divider(color: AppColor.kGray100, height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: AppStyles.styleMedium14(context,
                      color: AppColor.kGray600),
                ),
                Text(
                  '\$${cartProvider.getTotal(productProvider: productProvider, shipping: 0, discount: .25, tac: 61.99).toStringAsFixed(2)}',
                  style: AppStyles.styleMedium14(context,
                      color: AppColor.kGray900),
                ),
              ],
            ),
            const SizedBox(height: 24),
            isButtonShow == false
                ? const SizedBox.shrink()
                : CustomLoginButtonLogin(
                    title: 'Proceed to Checkout',
                    function: () {
                      Navigator.pushNamed(context, TrackOrderView.idPage,
                          arguments: cartProvider);
                    },
                  )
          ],
        ),
      ),
    );
  }
}
