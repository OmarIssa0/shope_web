import 'package:flutter/material.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_totals.dart';
import 'package:shope_web/features/details/presentation/view/widgets/mobile_footer_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/track_order/presentation/view/widgets/text_filed_track_order.dart';

class TrackOrderMobileLayout extends StatelessWidget {
  const TrackOrderMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: [
                TextFiledTrackOrder(),
                CartTotals(isButtonShow: false),
              ],
            ),
          ),
          SizedBox(height: 70),
          MobileFooterLayout(),
          InfoDevFooter()
        ],
      ),
    );
  }
}
