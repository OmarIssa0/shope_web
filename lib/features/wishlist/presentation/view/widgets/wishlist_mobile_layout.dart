import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/details/presentation/view/widgets/mobile_footer_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/wishlist/presentation/view/widgets/image_item_wishlist_view_mobile_layout.dart';
import 'package:shope_web/features/wishlist/presentation/view/widgets/info_item_wishlist_mobile_layout.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/provider/wishlist_provider.dart';

class MobileLayoutWishlistView extends StatelessWidget {
  const MobileLayoutWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
              children: List.generate(
                  wishlistProvider.getWishlistItem.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(9),
                          onTap: () {
                            Navigator.pushNamed(context, DetailsView.idPage,
                                arguments: wishlistProvider
                                    .getWishlistItem.values
                                    .toList()[index]
                                    .productId);
                          },
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 12),
                                      child: ImageItemWishlistViewMobileLayout(
                                        productId: wishlistProvider
                                            .getWishlistItem.values
                                            .toList()[index]
                                            .productId,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: InfoItemWishlistMobileLayout(
                                          productId: wishlistProvider
                                              .getWishlistItem.values
                                              .toList()[index]
                                              .productId),
                                    )
                                  ]),
                              const SizedBox(height: 12),
                              const Divider(endIndent: 24, indent: 24),
                            ],
                          ),
                        ),
                      ))),
          const SizedBox(height: 70),
          const MobileFooterLayout(),
          const InfoDevFooter()
        ],
      ),
    );
  }
}
