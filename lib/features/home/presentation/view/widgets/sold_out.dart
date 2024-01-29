import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class SoldOutWidgets extends StatelessWidget {
  const SoldOutWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: ShapeDecoration(
        color: AppColor.kGray400,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: FittedBox(
        child: Row(
          children: [
            Text('SOLD OUT',
                style:
                    AppStyles.styleSemiBold16(context, color: AppColor.kWhite)),
          ],
        ),
      ),
    );
  }
}
