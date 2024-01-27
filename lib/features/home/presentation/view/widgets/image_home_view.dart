import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class ImageHomeView extends StatelessWidget {
  const ImageHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesWidgetPNG),
              const SizedBox(width: 24),
              Column(
                children: [
                  Image.asset(Assets.imagesWidget2PNG),
                  const SizedBox(height: 24),
                  Image.asset(Assets.imagesWidget3PNG),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
