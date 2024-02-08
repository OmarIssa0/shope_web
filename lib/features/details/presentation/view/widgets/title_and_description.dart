import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1 / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2020 Apple MacBook Pro with Apple sM1 Chip (13-inch, 8GB RAM ,256GB SSD Storage) - Space Gray',
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleSemiBold20(context, color: AppColor.kGray900),
          ),
          const SizedBox(height: 15),
          Text(
            'The most powerful MacBook Pro ever is here. With the blazing-fast M1 Pro or M1 Max chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR display, the best camera and audio ever in a Mac notebook, and all the ports you need. he first notebook of its kind, this MacBook Pro is a beast. M1 Pro takes the exceptional performance of the M1 architecture to a whole new level for pro users.',
            maxLines: 100,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular16(context, color: AppColor.kGray600),
          ),
        ],
      ),
    );
  }
}
