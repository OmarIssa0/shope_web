
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_all_product.dart';

class TopCategoryFooter extends StatelessWidget {
  const TopCategoryFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Top Category',
          style: AppStyles.styleMedium16(context, color: AppColor.kWhite),
        ),
        const SizedBox(height: 24),
        Text(
          'Computer & Laptop',
          style: AppStyles.styleMedium14(context, color: AppColor.kGray400),
        ),
        const SizedBox(height: 12),
        Text(
          'SmartPhone',
          style: AppStyles.styleMedium14(context, color: AppColor.kGray400),
        ),
        const SizedBox(height: 12),
        Text(
          'Headphone',
          style: AppStyles.styleMedium14(context, color: AppColor.kGray400),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 24,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: AppColor.kWarning500,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Accessories',
              style: AppStyles.styleMedium14(context, color: AppColor.kWhite),
            )
          ],
        ),
        const SizedBox(height: 12),
        Text(
          'Camera & Photo',
          style: AppStyles.styleMedium14(context, color: AppColor.kGray400),
        ),
        const SizedBox(height: 12),
        Text(
          'TV & Homes',
          style: AppStyles.styleMedium14(context, color: AppColor.kGray400),
        ),
        const SizedBox(height: 12),
        const CustomAllProduct()
      ],
    );
  }
}
