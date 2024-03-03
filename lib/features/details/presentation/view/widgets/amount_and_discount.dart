import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class AmountAndDiscount extends StatelessWidget {
  const AmountAndDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final getCurrProduct = productProvider.findByProductId(productId);

    return Row(
      children: [
        Text(
          '\$${getCurrProduct!.productPrice}',
          style:
              AppStyles.styleSemiBold24(context, color: AppColor.kSecondary500),
        ),
        const SizedBox(width: 5),
        getCurrProduct.discount == null
            ? const SizedBox.shrink()
            : Text(
                '\$${getCurrProduct.discount ?? ''}',
                style:
                    AppStyles.styleRegular18(context, color: AppColor.kGray500)
                        .copyWith(decoration: TextDecoration.lineThrough),
              ),
        const SizedBox(width: 13),
        getCurrProduct.off == null
            ? const SizedBox()
            : Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColor.kWarning400,
                ),
                child: Text(
                  getCurrProduct.off ?? '',
                  style: AppStyles.styleSemiBold14(context,
                      color: AppColor.kGray900),
                ),
              ),
      ],
    );
  }
}
