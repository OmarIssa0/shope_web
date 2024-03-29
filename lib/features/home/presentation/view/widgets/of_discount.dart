import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class OfDiscount extends StatelessWidget {
  const OfDiscount({
    super.key, required this.discount,
  });


  final String discount; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: ShapeDecoration(
        color: AppColor.kWarning400,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: FittedBox(
        child: Row(
          children: [
            Text(discount,
                style: AppStyles.styleSemiBold12(context,
                    color: AppColor.kGray900)),
          ],
        ),
      ),
    );
  }
}
