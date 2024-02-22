import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/details/presentation/view/widgets/box_count.dart';

class CustomItemCartViewMobileLayout extends StatelessWidget {
  const CustomItemCartViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ListTile(
          leading: Image.network(
            "https://i.ibb.co/BtMBSgK/1-iphone14-128gb-black.webp",
            // height: size.height * .18,
            // width: size.width * 1,
          ),
          title: Text(
            'Red n hot pizza' * 10,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleSemiBold18(context, color: AppColor.kGray900),
          ),
          subtitle: Text(
            'Red n hot pizza' * 10,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular14(context, color: AppColor.kGray800),
          ),
          trailing: const Icon(
            Icons.cancel,
            color: AppColor.kDanger500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(flex: 1),
              Text(
                r'$15.30',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleSemiBold16(context,
                    color: AppColor.kGray800),
              ),
              const Spacer(flex: 2),
              const BoxCount(
                padding: 5,
                wight: 12,
              ),
            ],
          ),
        ),
        const Divider(
          height: 32,
          endIndent: 12,
          indent: 12,
          color: AppColor.kGray100,
        )
      ],
    );
  }
}
