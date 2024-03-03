import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/wishlist/presentation/view/widgets/item_table_wishlist_desktop_layout.dart';
import 'package:shope_web/features/wishlist/presentation/view/widgets/row_header_wishlsit.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/provider/wishlist_provider.dart';

class TableWishlistItemDesktopLayout extends StatelessWidget {
  const TableWishlistItemDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width > SizeConfig.desktop
              ? MediaQuery.sizeOf(context).width * .71
              : MediaQuery.sizeOf(context).width * .81,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4)),
            border: Border.all(color: AppColor.kGray100, width: 1),
          ),
          child: Text(
            'Wishlist',
            style: AppStyles.styleMedium18(context, color: AppColor.kGray900),
          ),
        ),
        const RowWishlistHeaderTable(),
        Container(
            width: MediaQuery.sizeOf(context).width > SizeConfig.desktop
                ? MediaQuery.sizeOf(context).width * .71
                : MediaQuery.sizeOf(context).width * .81,
            padding:
                const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              // color: AppColor.kGray50,
              border: Border(
                bottom: BorderSide(color: AppColor.kGray100, width: 1),
                left: BorderSide(color: AppColor.kGray100, width: 1),
                right: BorderSide(color: AppColor.kGray100, width: 1),
              ),
            ),
            child: wishlistProvider.getWishlistItem.isEmpty
                ? const SizedBox.shrink()
                : Column(
                    children: List.generate(
                      wishlistProvider.getWishlistItem.length,
                      (index) => ItemTableWishlistDesktopLayout(
                        productId: wishlistProvider.getWishlistItem.values
                            .toList()[index]
                            .productId,
                      ),
                    ),
                  )),
      ],
    );
  }
}
