import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/widgets/body_product_details_mobile_layout.dart';
import 'package:shope_web/features/details/presentation/view/widgets/mobile_footer_layout.dart';
import 'package:shope_web/features/details/presentation/view/widgets/swiper_details_product_mobile_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';

class MobileLayoutDetailsView extends StatelessWidget {
  const MobileLayoutDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SwiperDetailsProductImageMobileLayout(),
          BodyProductDetailsMobileLayout(),
          MobileFooterLayout(),
          InfoDevFooter()
        ],
      ),
    );
  }
}
