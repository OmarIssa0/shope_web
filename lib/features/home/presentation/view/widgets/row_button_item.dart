
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_image.dart';

class RowButtonItem extends StatelessWidget {
  const RowButtonItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: const Color(0xFFFFE7D6),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: SvgPicture.asset(Assets.imagesHeart),
        ),
        const SizedBox(width: 8),
        Container(
          width: 170,
          height: 48,
          decoration: ShapeDecoration(
            color: const Color(0xFFF98131),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesShoppingCartSimple),
              const SizedBox(width: 8),
              const Text('ADD TO CARD',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'PublicSans'))
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: const Color(0xFFFFE7D6),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: SvgPicture.asset(Assets.imagesEye),
        ),
      ],
    );
  }
}
