import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_list_tile_and_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .6,
      color: AppColor.kSecondary700,
      child: CustomExpandedWidgets(
        child: Column(
          children: [
            const SizedBox(height: 40),
            ListTile(
              leading: const Icon(IconlyBold.profile,
                  size: 32, color: AppColor.kWhite),
              title: Text(
                'Omar issa',
                style: AppStyles.styleMedium14(context, color: AppColor.kWhite),
              ),
              subtitle: FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  'Omar.issa.slwade@gmail.com',
                  style:
                      AppStyles.styleRegular12(context, color: AppColor.kWhite),
                ),
              ),
            ),
            const Divider(
              thickness: .3,
              color: AppColor.kGray300,
            ),
            const SizedBox(height: 10),
            const ListViewListTile()
          ],
        ),
      ),
    );
  }
}
