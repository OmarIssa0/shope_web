import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_is_empty_widgets.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_totals.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/custom_item_cart_view_mobile_layout.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';

class CartViewMobileLayout extends StatelessWidget {
  const CartViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return SingleChildScrollView(
      child: cartProvider.getCartItem.isEmpty
          ? const CartIsEmptyWidgets()
          : Column(
              children: [
                Column(
                  children: List.generate(
                    cartProvider.getCartItem.length,
                    (index) => ChangeNotifierProvider.value(
                        value: cartProvider.getCartItem.values
                            .toList()
                            .reversed
                            .toList()[index],
                        child: const CustomItemCartViewMobileLayout()),
                  ),
                ),
                const CartTotals()
              ],
            ),
    );
  }
}
