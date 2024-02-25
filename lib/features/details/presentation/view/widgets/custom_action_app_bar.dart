import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/cart/presentation/view/cart_view.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/login/presentation/view/login_view.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';

class CustomActionAppBar extends StatelessWidget {
  const CustomActionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    // final cartModelProvider = Provider.of<CartModel>(context
    // final productProvider = Provider.of<ProductProvider>(context);
    // final getCurrProduct =
    // productProvider.findByProductId(cartModelProvider.productId);
    return Row(
      children: [
        cartProvider.getCartItem.isEmpty
            ? const SizedBox.shrink()
            : Badge(
                label: Text(
                  cartProvider.getCartItem.length.toString(),
                  style: const TextStyle(color: AppColor.kSecondary700),
                ),
                backgroundColor: Colors.white,
                alignment: const Alignment(.4, -.3),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CartView.idPage);
                  },
                  icon: const Icon(
                    IconlyLight.buy,
                    color: AppColor.kWhite,
                  ),
                ),
              ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LoginView.idPage);
          },
          icon: const Icon(
            IconlyLight.profile,
            color: AppColor.kWhite,
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SearchView.idPage);
            },
            icon: const Icon(
              IconlyLight.search,
              color: AppColor.kWhite,
            )),
      ],
    );
  }
}
