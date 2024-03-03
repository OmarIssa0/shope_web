import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/wishlist/presentation/view/widgets/table_wishlist_item_desktop_layout.dart';

class DesktopLayoutWishlistView extends StatelessWidget {
  const DesktopLayoutWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 100),
          TableWishlistItemDesktopLayout(),
          SizedBox(height: 100),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}
