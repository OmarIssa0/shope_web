import 'package:flutter/material.dart';
class ListViewItemProduct extends StatelessWidget {
  const ListViewItemProduct({super.key, required this.children});

  // get passedCategory => null;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
