import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/search/presentation/view/widgets/grid_view_search_mobile_layout.dart';

class TabletLayoutSearchView extends StatelessWidget {
  const TabletLayoutSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HederSection(),
        CustomGridViewSearchView(),
        // SizedBox(height: 72),
        // FooterWidgets(),
        // InfoDevFooter(),
      ],
    );
  }
}
