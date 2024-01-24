import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) => const DesktopLayout(),
        tabletLayout: (context) => const SizedBox(),
        mobileLayout: (context) => const SizedBox(),
      ),
    );
  }
}
