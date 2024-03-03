import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/sold_out.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/provider/wishlist_provider.dart';

class ItemProductSearch extends StatelessWidget {
  const ItemProductSearch(
      {super.key, required this.productModel, required this.productId});

  final String productId;

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct = productProvider.findByProductId(productId);
    final cartProvider = Provider.of<CartProvider>(context);
    final wishlistProvider = Provider.of<WishlistProvider>(context);

    return getCurrProduct == null
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailsView.idPage,
                    arguments: getCurrProduct.productId);
              },
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 10,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColor.kGray100),
                      color: AppColor.kWhite,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        getCurrProduct.productTitle,
                        // '2020 Apple MacBook Pro with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD Storage) - Space Gray',
                        style: AppStyles.styleMedium16(context,
                            color: AppColor.kGray900),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        // 'Electronics Devices',
                        getCurrProduct.productCategory,
                        style: AppStyles.styleRegular12(context,
                            color: AppColor.kSecondary500),
                      ),
                      // const SizedBox(height: 8),
                      Divider(color: Colors.grey.shade100),
                      Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        getCurrProduct.productDescription,
                        // 'The most powerful MacBook Pro ever is here. With the blazing-fast M1 Pro or M1 Max chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR display, the best camera and audio ever in a Mac notebook, and all the ports you need. The first notebook of its kind, this MacBook Pro is a beast. M1 Pro takes the exceptional performance of the M1 architecture to a whole new level for pro users.',
                        style: AppStyles.styleRegular12(context,
                            color: AppColor.kGray600),
                      ),
                      const SizedBox(height: 15),
                      Hero(
                        tag: getCurrProduct.productId,
                        child: Image.network(
                          getCurrProduct.productImage.first,
                          // Assets.imagesIphone,
                          // fit: BoxFit.fill,
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * .2,
                        ),
                      ),
                      Divider(color: Colors.grey.shade100),
                      Row(
                        children: [
                          Text(
                            '\$${getCurrProduct.productPrice}',
                            // r'$1699',
                            style: AppStyles.styleSemiBold18(context,
                                color: AppColor.kSecondary500),
                          ),
                          const SizedBox(width: 5),
                          getCurrProduct.off == null
                              ? const SizedBox.shrink()
                              : Text(
                                  '\$${getCurrProduct.discount}',
                                  style: AppStyles.styleRegular14(context,
                                          color: AppColor.kGray500)
                                      .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough),
                                ),
                          const SizedBox(width: 13),
                          getCurrProduct.off == null
                              ? const SizedBox.shrink()
                              : Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: AppColor.kWarning400,
                                  ),
                                  child: Text(
                                    getCurrProduct.off ?? '',
                                    style: AppStyles.styleSemiBold12(context,
                                        color: AppColor.kGray900),
                                  ),
                                ),
                          const Spacer(),
                          getCurrProduct.inStock == true
                              ? const SoldOutWidgets()
                              : const SizedBox.shrink(),
                        ],
                      ),
                      Divider(color: Colors.grey.shade100),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  if (getCurrProduct.inStock == true) {
                                    return;
                                  }
                                  if (cartProvider.isProductInCart(
                                      productId: getCurrProduct.productId)) {
                                    return;
                                  }
                                  cartProvider.addProductToCart(
                                      productId: getCurrProduct.productId);
                                },
                                child: getCurrProduct.inStock == true
                                    ? Row(
                                        children: [
                                          Text(
                                            'Sold out',
                                            style: AppStyles.styleMedium16(
                                                    context,
                                                    color: AppColor.kGray600)
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                          ),
                                        ],
                                      )
                                    : cartProvider.isProductInCart(
                                            productId: getCurrProduct.productId)
                                        ? Row(
                                            children: [
                                              const Icon(Icons.check,
                                                  color: AppColor.kGray600),
                                              const SizedBox(width: 12),
                                              Text(
                                                'In Cart',
                                                style: AppStyles.styleMedium16(
                                                    context,
                                                    color: AppColor.kGray600),
                                              ),
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              const Icon(IconlyLight.buy,
                                                  color: AppColor.kGray600),
                                              const SizedBox(width: 10),
                                              Text(
                                                'Add to card',
                                                style: AppStyles.styleMedium18(
                                                    context,
                                                    color: AppColor.kGray600),
                                              ),
                                            ],
                                          ),
                              ),
                            ),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.kGray300, width: .1)),
                            ),
                            const SizedBox(width: 25),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  wishlistProvider.addOrRemoveProductToWishlist(
                                      productId: productId);
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                        wishlistProvider.isProductInWishlist(
                                                productId: productId)
                                            ? IconlyBold.heart
                                            : IconlyLight.heart,
                                        color: wishlistProvider
                                                .isProductInWishlist(
                                                    productId: productId)
                                            ? AppColor.kDanger500
                                            : AppColor.kGray600),
                                    const SizedBox(width: 10),
                                    Text(
                                      wishlistProvider.isProductInWishlist(
                                              productId: productId)
                                          ? 'In Wishlist'
                                          : 'Add to wishlist',
                                      style: AppStyles.styleMedium18(context,
                                          color: AppColor.kGray600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
