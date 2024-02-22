import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';

class CustomAllProduct extends StatelessWidget {
  const CustomAllProduct({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchView.idPage);
      },
      child: Row(
        children: [
          Text(
            'Browse All Product',
            style: AppStyles.styleSemiBold14(context,
                color: color ?? AppColor.kPrimary500),
          ),
          const SizedBox(width: 8),
          Icon(Icons.arrow_forward, color: color ?? AppColor.kPrimary500)
        ],
      ),
    );
  }
}
