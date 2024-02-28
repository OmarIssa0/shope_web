import 'package:flutter/material.dart';
import 'package:shope_web/features/cart/presentation/view/widgets/cart_totals.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/track_order/presentation/view/widgets/text_filed_track_order.dart';

class TrackOrderDesktopLayout extends StatelessWidget {
  const TrackOrderDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 24),

          CustomExpandedWidgets(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: TextFiledTrackOrder()),
                SizedBox(
                    width: 350,
                    child: CartTotals(
                      isButtonShow: false,
                    )),
              ],
            ),
          ),
          SizedBox(height: 72),
          // Spacer(),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}
