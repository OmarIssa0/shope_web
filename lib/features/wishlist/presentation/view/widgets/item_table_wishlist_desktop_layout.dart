import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/provider/wishlist_provider.dart';

class ItemTableWishlistDesktopLayout extends StatelessWidget {
  const ItemTableWishlistDesktopLayout({
    super.key,
    required this.productId,
  });
  final String productId;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    final getProduct = productProvider.findByProductId(productId);
    return Column(
      children: [
        Row(
          children: [
            Image.network(
              getProduct!.productImage.first,
              height: 72,
              width: 72,
            ),
            // const SizedBox(width: 16),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .15,
              child: Text(
                getProduct.productTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    AppStyles.styleRegular14(context, color: AppColor.kGray700),
              ),
            ),
            // const SizedBox(width: 10),
            const Spacer(flex: 1),
            Column(
              children: [
                getProduct.discount == null
                    ? const SizedBox.shrink()
                    : Text(
                        '\$${getProduct.discount}',
                        style: AppStyles.styleRegular14(context,
                                color: AppColor.kGray400)
                            .copyWith(decoration: TextDecoration.lineThrough),
                      ),
                Text('\$${getProduct.productPrice}',
                    style: AppStyles.styleRegular14(context,
                        color: AppColor.kGray900)),
              ],
            ),
            const Spacer(flex: 1),
            // SizedBox(width: MediaQuery.sizeOf(context).height * .11),
            getProduct.inStock == false
                ? Text('OUT OF STOCK',
                    style: AppStyles.styleSemiBold14(context,
                        color: AppColor.kDanger500))
                : Text('IN STOCK',
                    style: AppStyles.styleSemiBold14(context,
                        color: AppColor.kSuccess500)),
            // SizedBox(width: MediaQuery.sizeOf(context).height * .1),
            const Spacer(flex: 2),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: getProduct.inStock == false
                        ? AppColor.kGray300
                        : AppColor.kPrimary500,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                onPressed: () {
                  if (getProduct.inStock == false) {
                    return;
                  }
                  if (cartProvider.isProductInCart(productId: productId)) {
                    return;
                  }
                  cartProvider.addProductToCart(productId: productId);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: getProduct.inStock == false
                      ? Text('Out Sold',
                          style: AppStyles.styleBold14(context,
                              color: AppColor.kWhite))
                      : cartProvider.isProductInCart(productId: productId)
                          ? Row(
                              children: [
                                Text('In Cart',
                                    style: AppStyles.styleBold14(context,
                                        color: AppColor.kWhite)),
                                const SizedBox(width: 8),
                                SvgPicture.asset(
                                    Assets.imagesShoppingCartSimple)
                              ],
                            )
                          : Row(
                              children: [
                                Text('ADD TO CART',
                                    style: AppStyles.styleBold14(context,
                                        color: AppColor.kWhite)),
                                const SizedBox(width: 8),
                                SvgPicture.asset(
                                    Assets.imagesShoppingCartSimple)
                              ],
                            ),
                )),

            IconButton(
                color: AppColor.kDanger500,
                onPressed: () {
                  wishlistProvider.addOrRemoveProductToWishlist(
                      productId: productId);
                },
                icon: const Icon(
                  Icons.cancel_outlined,
                  color: AppColor.kGray400,
                ))
          ],
        )
      ],
    );
  }
}
