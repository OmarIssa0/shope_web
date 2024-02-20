import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class TitleAndDescriptionDetailsMobileLayout extends StatelessWidget {
  const TitleAndDescriptionDetailsMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final getCurrProduct = productProvider.findByProductId(productId);

    return Column(
      children: [
        const SizedBox(height: 15),
        Text(
          getCurrProduct!.productTitle,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleSemiBold22(context, color: AppColor.kGray900),
        ),
      ],
    );
  }
}
