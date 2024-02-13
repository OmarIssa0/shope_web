import 'package:flutter/material.dart';
import 'package:shope_web/features/search/presentation/view/widgets/grid_view_search_mobile_layout.dart';

class MobileLayoutSearchView extends StatelessWidget {
  const MobileLayoutSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomGridViewSearchView(),
      ],
    );
  }
}