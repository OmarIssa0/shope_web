import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/totals_price.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';

class CartTotals extends StatelessWidget {
  const CartTotals({super.key});

  @override
  Widget build(BuildContext context) {
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
                  r'$357.99 USD',
                  style: AppStyles.styleMedium14(context,
                      color: AppColor.kGray900),
                ),
              ],
            ),
            const SizedBox(height: 24),
            CustomLoginButtonLogin(
                title: 'Proceed to Checkout', function: () {})
          ],
        ),
      ),
    );
  }
}
