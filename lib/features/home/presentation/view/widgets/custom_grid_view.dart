import 'dart:ui';

import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.children,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.childAspectRatio,
    required this.crossAxisCount,
  });

  final List<Widget> children;
  final double mainAxisSpacing, crossAxisSpacing, childAspectRatio;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: AppScrollBehavior(),
      child: GridView(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: mainAxisSpacing,
          crossAxisSpacing: crossAxisSpacing,
          crossAxisCount: 2,
          // childAspectRatio: 0.36,
          childAspectRatio: childAspectRatio,
        ),
        children: children,
      ),
    );
  }
}

// if this gridview used on flutter web need below class for scrolling
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
