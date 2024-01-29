import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Row(
        children: [
          Flexible(child: Image.asset(Assets.imagesBannerButtonOne)),
          const SizedBox(width: 24),
          Flexible(child: Image.asset(Assets.imagesBannerButtonToo)),
        ],
      ),
    );
  }
}
