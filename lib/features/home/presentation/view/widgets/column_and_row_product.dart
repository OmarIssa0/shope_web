import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/list_view_item_product.dart';

class ColumnAndRowProduct extends StatelessWidget {
  const ColumnAndRowProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 35),
        ListViewItemProduct(),
        SizedBox(height: 40),
        ListViewItemProduct(),
      ],
    );
  }
}
