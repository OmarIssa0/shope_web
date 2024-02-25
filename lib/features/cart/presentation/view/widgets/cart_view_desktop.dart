import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_is_empty_widgets.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_totals.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/teble_cart_item_desktop_layout.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';

class CartViewDesktopLayout extends StatelessWidget {
  const CartViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          const HederSection(),
          const SizedBox(height: 24),
          CustomExpandedWidgets(
              child: cartProvider.getCartItem.isEmpty
                  ? const CartIsEmptyWidgets()
                  : Column(
                      children: [
                        const TableCartItemDesktopLayout(),
                        // const SizedBox(height: 24),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .2),
                          child: const CartTotals(),
                        ),
                      ],
                    )),
          const SizedBox(height: 72),
          const FooterWidgets(),
          const InfoDevFooter(),
        ],
      ),
    );
  }
}
