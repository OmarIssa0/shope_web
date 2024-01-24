
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_search_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/home_view_heder.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_heder.dart';

class HederSection extends StatelessWidget {
  const HederSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeViewHeder(),
        Divider(color: AppColor.kGray500, height: 0),
        HederSearchHomeView(),
        InfoHeder(),
        Divider(color: AppColor.kGray300, height: 0),
      ],
    );
  }
}
