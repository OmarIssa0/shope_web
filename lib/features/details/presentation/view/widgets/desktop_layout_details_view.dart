import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/widgets/details_body_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';

class DesktopLayoutDetailsView extends StatelessWidget {
  const DesktopLayoutDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 24),
          DetailsBodyProductDesktop(),
          // SizedBox(height: 240),
          SizedBox(height: 72),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}
