import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/wishlist/presentation/view/widgets/desktop_layout_wishlist_view.dart';
import 'package:shope_web/features/wishlist/presentation/view/widgets/wishlist_mobile_layout.dart';

class WishlistView extends StatelessWidget {
  static const idPage = '/WishlistView';
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: AppColor.kSecondary700,
              automaticallyImplyLeading: false,
              leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColor.kWhite,
                  )),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayoutWishlistView(),
        tabletLayout: (context) => const DesktopLayoutWishlistView(),
        desktopLayout: (context) => const DesktopLayoutWishlistView(),
      ),
    );
  }
}
