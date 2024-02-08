import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';

class RowButtonProductDetails extends StatelessWidget {
  const RowButtonProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          // foregroundColor: AppColor.kPrimary500,
          backgroundColor: AppColor.kPrimary500,
          // shape: BeveledRectangleBorder(
          //   borderRadius: BorderRadius.circular(3),
          // ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.5, vertical: 16),
        child: Row(
          children: [
            Text(
              'Add to card',
              style: AppStyles.styleMedium16(context, color: AppColor.kWhite),
            ),
            const SizedBox(width: 12),
            SvgPicture.asset(Assets.imagesShoppingCartSimple)
          ],
        ),
      ),
    );
  }
}
