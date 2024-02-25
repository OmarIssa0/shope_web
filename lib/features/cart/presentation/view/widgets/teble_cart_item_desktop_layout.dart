import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/header_top_table.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/item_cart_desktop_layout.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';

class TableCartItemDesktopLayout extends StatelessWidget {
  const TableCartItemDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * .71,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4)),
            border: Border.all(color: AppColor.kGray100, width: 1),
          ),
          child: Text(
            'Shopping Card',
            style: AppStyles.styleMedium18(context, color: AppColor.kGray900),
          ),
        ),
        const HeaderTopTable(),
        Container(
          width: MediaQuery.sizeOf(context).width * .71,
          padding:
              const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(4),
              bottomLeft: Radius.circular(4),
            ),
            // color: AppColor.kGray50,
            border: Border(
              bottom: BorderSide(color: AppColor.kGray100, width: 1),
              left: BorderSide(color: AppColor.kGray100, width: 1),
              right: BorderSide(color: AppColor.kGray100, width: 1),
            ),
          ),
          child: Column(
            children: List.generate(
                cartProvider.getCartItem.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ChangeNotifierProvider.value(
                          value:
                              cartProvider.getCartItem.values.toList()[index],
                          child: const ItemCartDesktopLayout()),
                    )),
          ),
        ),
      ],
    );
  }
}
