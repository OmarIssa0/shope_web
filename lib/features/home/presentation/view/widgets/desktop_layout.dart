import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/best_deals.dart';
import 'package:shope_web/features/home/presentation/view/widgets/box_info.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/image_home_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_best_deals_produt.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 24),
          ImageHomeView(),
          SizedBox(height: 24),
          BoxInfo(),
          SizedBox(height: 72),
          BestDeals(),
          SizedBox(height: 24),
          ItemBestDealsProduct(),
          SizedBox(height: 72),
        ],
      ),
    );
  }
}
