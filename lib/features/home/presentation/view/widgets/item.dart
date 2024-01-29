import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view_model/item_product_model.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.itemProductModel,
  });

  final ItemProductModel itemProductModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(itemProductModel.image, height: 180, width: 216),
        const SizedBox(height: 3),
        Text(
          itemProductModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleRegular14(context, color: AppColor.kGray900),
        ),
        const SizedBox(height: 5),
        itemProductModel.isActive
            ? Row(
                children: [
                  Text(
                    itemProductModel.discount,
                    style: AppStyles.styleRegular14(context,
                            color: AppColor.kGray300)
                        .copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    itemProductModel.amount,
                    style: AppStyles.styleSemiBold14(context,
                        color: AppColor.kSecondary500),
                  ),
                ],
              )
            : Text(
                itemProductModel.amount,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleSemiBold14(context,
                    color: AppColor.kSecondary500),
              )
      ],
    );
  }
}
