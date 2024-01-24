import 'package:flutter/material.dart';

class CustomExpandedWidgets extends StatelessWidget {
  const CustomExpandedWidgets({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(flex: 10, child: child),
        const Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
