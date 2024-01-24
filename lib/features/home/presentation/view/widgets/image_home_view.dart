import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class ImageHomeView extends StatelessWidget {
  const ImageHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesWidget),
          const SizedBox(width: 24),
          Column(
            children: [
              SvgPicture.asset(Assets.imagesWidget2),
              const SizedBox(height: 24),
              SvgPicture.asset(Assets.imagesWidget3),
            ],
          )
        ],
      ),
    );
  }
}
