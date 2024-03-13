import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final getCurrProduct = productProvider.findByProductId(productId);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1 / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getCurrProduct!.productTitle,
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleSemiBold20(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 15),
          Text(
            getCurrProduct.productDescription,
            maxLines: 100,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular16(context, color: AppColor.kGray600),
          ),
        ],
      ),
    );
  }
}
