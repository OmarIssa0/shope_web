import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/details/presentation/view/widgets/row_button_product_details.dart';

class RowBoxCountAndButtonAddCart extends StatelessWidget {
  const RowBoxCountAndButtonAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            children: [
              // BoxCount(),
              SizedBox(width: 16),
              RowButtonProductDetails(),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.imagesHeart,
              height: 16.5,
              width: 18.75,
              colorFilter:
                  const ColorFilter.mode(AppColor.kGray600, BlendMode.srcIn),
            ),
            const SizedBox(width: 6),
            Text(
              'Add To Wishlist',
              style:
                  AppStyles.styleRegular14(context, color: AppColor.kGray700),
            )
          ],
        )
      ],
    );
  }
}
