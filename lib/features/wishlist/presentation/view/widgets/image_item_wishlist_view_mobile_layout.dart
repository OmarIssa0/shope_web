import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/provider/wishlist_provider.dart';

class ImageItemWishlistViewMobileLayout extends StatelessWidget {
  const ImageItemWishlistViewMobileLayout({
    super.key,
    required this.productId,
  });
  final String productId;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    final getProduct = productProvider.findByProductId(productId);

    return Stack(
      alignment: const Alignment(-1, .82),
      children: [
        Material(
          color: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.white,
            ),
            width: 129,
            height: 109,
            child: Container(
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
              ),
              child: Image.network(
                getProduct!.productImage.first,
                height: 101,
                width: 121,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 6),
          child: GestureDetector(
            onTap: () {
              wishlistProvider.addOrRemoveProductToWishlist(
                  productId: productId);
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white.withOpacity(.8),
              child: SvgPicture.asset(Assets.imagesDeleteSvg),
            ),
          ),
        ),
      ],
    );
  }
}
