import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/banner_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/best_deals.dart';
import 'package:shope_web/features/home/presentation/view/widgets/box_info.dart';
import 'package:shope_web/features/home/presentation/view/widgets/featured_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/image_home_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_best_deals_produt.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_view_category.dart';
import 'package:shope_web/features/home/presentation/view/widgets/pc_accessories.dart';
import 'package:shope_web/features/home/presentation/view/widgets/shop_with_category.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 24),
          //
          ImageHomeView(),
          SizedBox(height: 24),
          //
          BoxInfo(),
          SizedBox(height: 72),
          //
          BestDeals(),
          SizedBox(height: 24),
          //
          ItemBestDealsProduct(),
          SizedBox(height: 72),
          //
          ShopWithCategory(),
          SizedBox(height: 72),
          //
          ListCategoryItem(),
          SizedBox(height: 72),
          //
          FeaturedProductWidgets(),
          SizedBox(height: 40),
          //
          BannerImage(),
          SizedBox(height: 72),
          //
          ComputerAccessoriesSection(),
          SizedBox(height: 26),
        ],
      ),
    );
  }
}
