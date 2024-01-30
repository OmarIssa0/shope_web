import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/company_information_footer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/download_app_footer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/quick_links_footer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/top_catergory_footer.dart';

class FooterWidgets extends StatelessWidget {
  const FooterWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 72),
      color: AppColor.kGray900,
      child: const CustomExpandedWidgets(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CompanyInformationFooter(),
            SizedBox(width: 12),
            TopCategoryFooter(),
            QuickLinksFooter(),
            DownloadAppFooter()
          ],
        ),
      ),
    );
  }
}
