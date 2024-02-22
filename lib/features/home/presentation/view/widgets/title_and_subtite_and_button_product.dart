import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/row_button_item.dart';

class TitleAndSubtitleAndButtonProduct extends StatelessWidget {
  const TitleAndSubtitleAndButtonProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          Image.asset(Assets.imagesPs5, height: 268, width: 280),
          Row(
            children: [
              Row(
                children: List.generate(
                    5,
                    (index) =>
                        const Icon(Icons.star, color: AppColor.kWarning500)),
              ),
              const SizedBox(width: 3),
              const Text('(52,677)'),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            'Xbox Series S - 512GB SSD Console with Wireless Controller - EU Versio...',
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
                r'$865.99',
                style:
                    AppStyles.styleRegular16(context, color: AppColor.kGray300)
                        .copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                r'$442.12',
                style: AppStyles.styleSemiBold18(context,
                    color: AppColor.kSecondary500),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Games built using the Xbox Series X|S development kit showcase unparalleled load times, visuals.' *
                2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular14(context, color: AppColor.kGray600),
          ),
          const SizedBox(height: 18),
          const Spacer(),
          const RowButtonItem(),
        ],
      ),
    );
  }
}
