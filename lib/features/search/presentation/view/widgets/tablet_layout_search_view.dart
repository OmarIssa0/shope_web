import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/text_filed_search_home.dart';
import 'package:shope_web/features/search/presentation/view/widgets/grid_view_search_mobile_layout.dart';

class TabletLayoutSearchView extends StatelessWidget {
  const TabletLayoutSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HederSection(),
        CustomExpandedWidgets(child: SearchTextFiled()),
        CustomGridViewSearchView(),
        // SizedBox(height: 72),
        // FooterWidgets(),
        // InfoDevFooter(),
      ],
    );
  }
}
