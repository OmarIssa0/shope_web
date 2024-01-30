
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view_model/quick_links_footer_model.dart';

class QuickLinksFooter extends StatelessWidget {
  const QuickLinksFooter({super.key});

  static const items = [
    QuickLinksFooterModel(title: 'Shop Product'),
    QuickLinksFooterModel(title: 'Shoping Cart'),
    QuickLinksFooterModel(title: 'Wishlist'),
    QuickLinksFooterModel(title: 'Compare'),
    QuickLinksFooterModel(title: 'Track Order'),
    QuickLinksFooterModel(title: 'Customer Help'),
    QuickLinksFooterModel(title: 'About Us'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick links',
            style: AppStyles.styleMedium16(context, color: AppColor.kWhite),
          ),
          const SizedBox(height: 24),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      e.title,
                      style: AppStyles.styleMedium14(context,
                          color: AppColor.kGray400),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
