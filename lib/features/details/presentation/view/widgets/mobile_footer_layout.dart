import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/company_information_footer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/download_app_footer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/quick_links_footer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/top_catergory_footer.dart';

class MobileFooterLayout extends StatelessWidget {
  const MobileFooterLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 72),
      color: AppColor.kGray900,
      child: const CustomExpandedWidgets(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: CompanyInformationFooter()),
                SizedBox(),
                Expanded(child: TopCategoryFooter()),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: QuickLinksFooter()),
                Expanded(child: DownloadAppFooter()),
                // SizedBox(height: 50),
              ],
            )
          ],
        ),
      ),
    );
  }
}
