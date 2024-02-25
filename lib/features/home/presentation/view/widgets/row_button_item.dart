import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';

class RowButtonItem extends StatelessWidget {
  const RowButtonItem({
    super.key,
    required this.productId,
  });

  final String productId;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: const Color(0xFFFFE7D6),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: SvgPicture.asset(Assets.imagesHeart),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            if (cartProvider.isProductInCart(productId: productId)) {
              return;
            }
            cartProvider.addProductToCart(productId: productId);
          },
          child: Container(
            width: 170,
            height: 48,
            decoration: ShapeDecoration(
              color: const Color(0xFFF98131),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.imagesShoppingCartSimple),
                const SizedBox(width: 8),
                cartProvider.isProductInCart(productId: productId)
                    ? const Text('In Cart',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PublicSans'))
                    : const Text('ADD TO CARD',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PublicSans'))
              ],
            ),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DetailsView.idPage,
                arguments: productId);
          },
          child: Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: const Color(0xFFFFE7D6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: SvgPicture.asset(Assets.imagesEye),
          ),
        ),
      ],
    );
  }
}
