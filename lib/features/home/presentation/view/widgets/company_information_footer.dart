import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_logo.dart';

class CompanyInformationFooter extends StatelessWidget {
  const CompanyInformationFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomLogo(),
          const SizedBox(height: 24),
          Text(
            'Customer Supports:',
            style: AppStyles.styleRegular14(context, color: AppColor.kGray500),
          ),
          Text(
            '(629) 555-0129:',
            style: AppStyles.styleMedium18(context, color: AppColor.kWhite),
          ),
          const SizedBox(height: 12),
          Text(
            '4517 Washington Ave.\nManchester, Kentucky 39495',
            style: AppStyles.styleRegular16(context, color: AppColor.kGray300),
          ),
          const SizedBox(height: 12),
          Text(
            'info@kinbo.com',
            style: AppStyles.styleRegular16(context, color: AppColor.kWhite),
          ),
        ],
      ),
    );
  }
}
