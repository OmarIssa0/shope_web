import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/widgets_heder.dart';

class HomeViewHeder extends StatelessWidget {
  const HomeViewHeder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 52,
          // width: double.infinity,
          color: AppColor.kSecondary700,
          child: const CustomExpandedWidgets(
            child: WidgetsHeder(),
          ),
        ),
      ],
    );
  }
}
