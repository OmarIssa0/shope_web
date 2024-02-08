import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/widgets/body_details_product_tablet.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';

class TabletLayoutDetailsView extends StatelessWidget {
  const TabletLayoutDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HederSection(),
          SizedBox(height: 24),
          BodyDetailsProductTablet(),
          SizedBox(height: 72),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}
