import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class ImageHomeView extends StatelessWidget {
  const ImageHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Image.asset(
            Assets.imagesWidgetPNG1,
            alignment: Alignment.center,
            // fit: BoxFit.fill,
          )),
          const SizedBox(width: 24),
          Expanded(
            child: AspectRatio(
              // aspectRatio: 424 / 248,
              aspectRatio: 872 / 520,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 424 / 248,
                    child: Flexible(
                        child: Image.asset(
                      Assets.imagesWidget2PNG2,
                      fit: BoxFit.fill,
                    )),
                  ),
                  // const SizedBox(height: 24),
                  // AspectRatio(
                  //   aspectRatio: 424 / 248,
                  //   child: Flexible(
                  //       child: Image.asset(Assets.imagesWidget3PNG3,
                  //           fit: BoxFit.fill)),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
