import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/details/presentation/view/widgets/row_button_product_details.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/provider/wishlist_provider.dart';

class RowBoxCountAndButtonAddCart extends StatelessWidget {
  const RowBoxCountAndButtonAddCart({super.key});
  // final String productId;
  @override
  Widget build(BuildContext context) {
    // final productProvider =
    //     Provider.of<ProductProvider>(context, listen: false);
    String? productId = ModalRoute.of(context)!.settings.arguments as String;
    // final getCurrProduct = productProvider.findByProductId(productId);
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            children: [
              RowButtonProductDetails(),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                wishlistProvider.addOrRemoveProductToWishlist(
                    productId: productId);
              },
              icon: Icon(
                wishlistProvider.isProductInWishlist(productId: productId)
                    ? IconlyBold.heart
                    : IconlyLight.heart,
                size: 22,
              ),
              color: wishlistProvider.isProductInWishlist(productId: productId)
                  ? AppColor.kDanger500
                  : AppColor.kGray600,
            ),
            // const SizedBox(width: 6),
            Text(
              wishlistProvider.isProductInWishlist(productId: productId)
                  ? 'In Wishlist'
                  : 'Add To Wishlist',
              style:
                  AppStyles.styleRegular14(context, color: AppColor.kGray700),
            )
          ],
        )
      ],
    );
  }
}
