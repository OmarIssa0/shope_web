import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/widgets/desktop_layout_details_view.dart';
import 'package:shope_web/features/details/presentation/view/widgets/tablet_layout_details_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static const idPage = '/details view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const TabletLayoutDetailsView(),
        desktopLayout: (context) => const DesktopLayoutDetailsView(),
      ),
    );
  }
}
