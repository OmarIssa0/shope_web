import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/all_category.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_info_heder.dart';

class InfoHeder extends StatelessWidget {
  const InfoHeder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: CustomExpandedWidgets(
        child: Row(
          children: [
            const AllCategory(),
            const ListInfoHeder(),
            const Expanded(child: SizedBox()),
            SvgPicture.asset(Assets.imagesPhoneCall),
            const SizedBox(width: 8),
            Text(
              '+1-202-555-0104',
              style:
                  AppStyles.styleRegular18(context, color: AppColor.kGray900),
            ),
          ],
        ),
      ),
    );
  }
}
