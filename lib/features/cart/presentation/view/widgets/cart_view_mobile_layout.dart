import 'package:flutter/material.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_totals.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/custom_item_cart_view_mobile_layout.dart';

class CartViewMobileLayout extends StatelessWidget {
  const CartViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: List.generate(
              4,
              (index) => const CustomItemCartViewMobileLayout(),
            ),
          ),
          const CartTotals()
        ],
      ),
    );
  }
}
