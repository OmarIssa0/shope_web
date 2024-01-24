import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/widgets_heder_searh_home.dart';

class HederSearchHomeView extends StatelessWidget {
  const HederSearchHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      color: AppColor.kSecondary700,
      child: const CustomExpandedWidgets(
        child: WidgetsHederSearchHome(),
      ),
    );
  }
}
