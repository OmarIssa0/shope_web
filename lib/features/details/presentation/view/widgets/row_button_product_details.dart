import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class RowButtonProductDetails extends StatelessWidget {
  const RowButtonProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String productId = ModalRoute.of(context)!.settings.arguments as String;
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProvider = productProvider.findByProductId(productId);
    final cartProvider = Provider.of<CartProvider>(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: getCurrProvider?.inStock == true
              ? AppColor.kGray700
              : AppColor.kPrimary500,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {
        if (getCurrProvider?.inStock == true) {
          return;
        }
        if (cartProvider.isProductInCart(
            productId: getCurrProvider!.productId)) {
          return;
        }
        cartProvider.addProductToCart(productId: getCurrProvider.productId);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.5, vertical: 16),
        child: getCurrProvider?.inStock == true
            ? Row(
                children: [
                  Text(
                    'Sold out',
                    style: AppStyles.styleMedium16(context,
                        color: AppColor.kWhite),
                  ),
                  const SizedBox(width: 12),
                ],
              )
            : cartProvider.isProductInCart(
                    productId: getCurrProvider!.productId)
                ? Row(
                    children: [
                      Text(
                        'In Cart',
                        style: AppStyles.styleMedium16(context,
                            color: AppColor.kWhite),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.check, color: AppColor.kWhite),
                    ],
                  )
                : Row(
                    children: [
                      Text(
                        'Add to card',
                        style: AppStyles.styleMedium16(context,
                            color: AppColor.kWhite),
                      ),
                      const SizedBox(width: 12),
                      SvgPicture.asset(Assets.imagesShoppingCartSimple)
                    ],
                  ),
      ),
    );
  }
}
