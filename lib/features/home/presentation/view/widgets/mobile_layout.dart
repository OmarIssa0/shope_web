import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/details/presentation/view/widgets/mobile_footer_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/best_deals.dart';
import 'package:shope_web/features/home/presentation/view/widgets/cart_swiper.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_box_info_mobile_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/featured_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_best_deals_produt.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_view_category.dart';

class MobileLayoutHomeView extends StatelessWidget {
  const MobileLayoutHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 12),
          const CartSwiper(),
          const SizedBox(height: 18),
          const CustomBoxInfoMobileLayout(),
          const SizedBox(height: 35),
          const BestDeals(),
          const SizedBox(height: 24),
          const ItemBestDealsProduct(),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Shop with Categorys',
                  style: AppStyles.styleSemiBold24(context,
                      color: AppColor.kGray900))
            ],
          ),
          const SizedBox(height: 15),
          //
          const ListCategoryItem(),
          const SizedBox(height: 72),
          const FeaturedProductWidgets(),
          const SizedBox(height: 40),
          const CartSwiper(),
          const SizedBox(height: 70),
          const MobileFooterLayout(),
          const InfoDevFooter()
        ],
      ),
    );
  }
}
