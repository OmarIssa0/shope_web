import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
class BoxCount extends StatelessWidget {
  const BoxCount(
      {super.key,
      this.padding,
      this.wight,
      required this.onTap,
      required this.onTapToo,
      required this.data});

  final double? padding, wight;

  final Function onTap, onTapToo;
  final String data;

  @override
  Widget build(BuildContext context) {
   
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: padding ?? 20, vertical: padding ?? 16),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.kGray100, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  onTap();
                  // cartProvider.updateQuantity(
                  //     productId: cartModelProvider.productId,
                  //     quantity: count = 1);
                  // setState(() {});
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.kGray900,
                  size: 16,
                ),
              ),
              SizedBox(width: wight ?? 24),
              Text(
                // '1',
                data,
                // cartModelProvider.quantity.toString(),
                style:
                    AppStyles.styleRegular16(context, color: AppColor.kGray700),
              ),
              SizedBox(width: wight ?? 24),
              GestureDetector(
                onTap: () {
                  onTapToo();
                  // cartProvider.updateQuantity(
                  //     productId: cartModelProvider.productId,
                  //     quantity: count + 1);
                  // setState(() {});
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.kGray900,
                  size: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
