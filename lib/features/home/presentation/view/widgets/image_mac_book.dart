import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class ImageMacBook extends StatelessWidget {
  const ImageMacBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1438 / 424,
        child: CustomExpandedWidgets(
          child: Image.asset(
            Assets.imagesBannerMacBook,
            fit: BoxFit.scaleDown,
          ),
        ));
  }
}
