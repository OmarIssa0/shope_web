import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_view_mobile_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';

class CartView extends StatelessWidget {
  static const idPage = '/CartView';
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(color: AppColor.kWhite),
        ),
        backgroundColor: AppColor.kSecondary700,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColor.kWhite,
            )),
      ),
      body: AdaptiveLayout(
        mobileLayout: (context) => const CartViewMobileLayout(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const SizedBox(),
      ),
    );
  }
}
