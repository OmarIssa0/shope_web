import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class BestDeals extends StatelessWidget {
  const BestDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Row(
        children: [
          Text('Best Deals',
              style:
                  AppStyles.styleSemiBold24(context, color: AppColor.kGray900)),
          const SizedBox(width: 24),
          Text('Deals ends in',
              style:
                  AppStyles.styleRegular14(context, color: AppColor.kGray400)),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            color: AppColor.kWarning300,
            child: Text(
              '16d : 21h : 57m : 23s',
              style:
                  AppStyles.styleRegular14(context, color: AppColor.kGray900),
            ),
          ),
          const Expanded(child: SizedBox()),
          Text(
            'Browse All Product',
            style: AppStyles.styleSemiBold14(context,
                color: AppColor.kSecondary500),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward, color: AppColor.kSecondary500)
        ],
      ),
    );
  }
}
