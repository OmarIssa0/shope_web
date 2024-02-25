import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/cart/presentation/view/cart_view.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/home/presentation/view/home_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_logo.dart';
import 'package:shope_web/features/login/presentation/view/login_view.dart';

class WidgetsHederSearchHome extends StatelessWidget {
  const WidgetsHederSearchHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Row(
      children: [
        GestureDetector(
            onTap: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomeView(),
                )),
            child: const CustomLogo(image: Assets.imagesLogoPNG)),
        // const SearchTextFiled(),
        const Expanded(child: SizedBox()),
        cartProvider.getCartItem.isEmpty
            ? const SizedBox.shrink()
            : Badge(
                alignment: const Alignment(.4, -.3),
                label: Text(
                  cartProvider.getCartItem.length.toString(),
                  style: const TextStyle(color: AppColor.kSecondary700),
                ),
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CartView.idPage);
                    },
                    icon: const Icon(IconlyLight.buy, color: AppColor.kWhite))),
        const SizedBox(width: 12),
        const Icon(IconlyLight.heart, color: AppColor.kWhite),
        const SizedBox(width: 12),
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(LoginView.idPage);
            },
            icon: const Icon(IconlyLight.profile),
            color: AppColor.kWhite),
      ],
    );
  }
}
