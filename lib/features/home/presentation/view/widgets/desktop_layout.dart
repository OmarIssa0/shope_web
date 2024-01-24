import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/image_home_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HederSection(),
        SizedBox(height: 24),
        ImageHomeView(),
      ],
    );
  }
}
