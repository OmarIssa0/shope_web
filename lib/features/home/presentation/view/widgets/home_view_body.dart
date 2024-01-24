import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/home_view_heder.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeViewHeder(),
      ],
    );
  }
}