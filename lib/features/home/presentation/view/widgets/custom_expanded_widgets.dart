import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/size_config.dart';

class CustomExpandedWidgets extends StatelessWidget {
  const CustomExpandedWidgets({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: MediaQuery.sizeOf(context).width < SizeConfig.desktop ? 15 : 5,
          child: child,
        ),
        const Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
// flex 1920 / 11flex = 174.5