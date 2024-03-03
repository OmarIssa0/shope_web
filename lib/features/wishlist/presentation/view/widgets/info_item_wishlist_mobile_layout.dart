import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/home/presentation/view/widgets/sold_out.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class InfoItemWishlistMobileLayout extends StatelessWidget {
  const InfoItemWishlistMobileLayout({
    super.key,
    required this.productId,
  });
  final String productId;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    // final wishlistProvider = Provider.of<WishlistProvider>(context);
    final getProduct = productProvider.findByProductId(productId);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .51,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getProduct!.productTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text('\$${getProduct.productPrice}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.styleSemiBold18(context,
                      color: AppColor.kGray900)),
              const SizedBox(width: 6),
              getProduct.discount == null
                  ? const SizedBox.shrink()
                  : Text(
                      '\$${getProduct.discount}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.styleMedium16(context,
                              color: AppColor.kGray500)
                          .copyWith(decoration: TextDecoration.lineThrough),
                    ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getProduct.inStock == true
                      ? const SoldOutWidgets()
                      : const SizedBox.shrink(),
                  const SizedBox(height: 2),
                  getProduct.off == null
                      ? const SizedBox.shrink()
                      : FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: AppColor.kWarning400,
                            ),
                            child: Text(
                              getProduct.off ?? '',
                              style: AppStyles.styleSemiBold12(context,
                                  color: AppColor.kGray900),
                            ),
                          ),
                        ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    cartProvider.addProductToCart(productId: productId);
                  },
                  child: cartProvider.isProductInCart(productId: productId)
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.kPrimary500),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              'In Cart',
                              style: AppStyles.styleRegular14(context,
                                  color: AppColor.kWhite),
                            ),
                          ),
                        )
                      : SvgPicture.asset(Assets.imagesAddCartWishlist))
            ],
          )
        ],
      ),
    );
  }
}
