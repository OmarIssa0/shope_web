import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/row_button_item.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class TitleAndSubtitleAndButtonProduct extends StatelessWidget {
  const TitleAndSubtitleAndButtonProduct({
    super.key,
    required this.productId,
  });

  final String productId;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct = productProvider.findByProductId(productId);
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getCurrProduct?.productId == null
              ? const SizedBox.shrink()
              : Hero(
                  tag: getCurrProduct!.productId,
                  child: Image.network(getCurrProduct.productImage.first,
                      height: 268, width: 280),
                ),
          // Row(
          //   children: [
          //     Row(
          //       children: List.generate(
          //           5,
          //           (index) =>
          //               const Icon(Icons.star, color: AppColor.kWarning500)),
          //     ),
          //     const SizedBox(width: 3),
          //     const Text('(52,677)'),
          //   ],
          // ),
          const SizedBox(height: 6),
          Text(
            getCurrProduct!.productTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular16(
              context,
              color: AppColor.kGray900,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '\$${getCurrProduct.productPrice}',
                style: AppStyles.styleSemiBold18(context,
                    color: AppColor.kSecondary500),
              ),
              const SizedBox(width: 4),
              Text(
                '\$${getCurrProduct.discount}',
                style:
                    AppStyles.styleRegular16(context, color: AppColor.kGray300)
                        .copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            getCurrProduct.productDescription,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular14(context, color: AppColor.kGray600),
          ),
          const SizedBox(height: 18),
          const Spacer(),
          RowButtonItem(
            productId: productId,
          ),
        ],
      ),
    );
  }
}
