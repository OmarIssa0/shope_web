import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.productId,
  });

  final String productId;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct = productProvider.findByProductId(productId);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(getCurrProduct!.productImage.first,
            height: 180, width: 216),
        const SizedBox(height: 3),
        Text(
          getCurrProduct.productTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
        ),
        const SizedBox(height: 5),
        getCurrProduct.discount != null
            ? Row(
                children: [
                  Text(
                    '\$${getCurrProduct.productPrice}',
                    style: AppStyles.styleSemiBold14(context,
                        color: AppColor.kSecondary500),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '\$${getCurrProduct.discount}',
                    style: AppStyles.styleRegular14(context,
                            color: AppColor.kGray300)
                        .copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              )
            : Text(
                '\$${getCurrProduct.productPrice}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleSemiBold14(context,
                    color: AppColor.kSecondary500),
              )
      ],
    );
  }
}
