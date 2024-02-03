import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/image_follow_list_view.dart';


class WidgetsHeder extends StatelessWidget {
  const WidgetsHeder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Welcome to Clicon online eCommerce store.',
            style: AppStyles.styleRegular14(context, color: AppColor.kWhite)),
        const Expanded(child: SizedBox()),
        Text("Follow us:",
            style: AppStyles.styleRegular14(context, color: AppColor.kWhite)),
        const ImageFollowUs(),
        const SizedBox(width: 24),
        // Container(
        //   width: .8,
        //   height: 28,
        //   color: Colors.white.withOpacity(.5),
        // ),
        // const SizedBox(width: 24),
        // const EngAndUsdRow(
        //   text: 'Eng',
        // ),
        // const SizedBox(width: 24),
        // const EngAndUsdRow(
        //   text: 'USD',
        // )
      ],
    );
  }
}
