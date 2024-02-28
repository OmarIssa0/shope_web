import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/track_order/presentation/view/widgets/track_order_desktop_layout.dart';
import 'package:shope_web/features/track_order/presentation/view/widgets/track_order_mobile_layout.dart';

class TrackOrderView extends StatelessWidget {
  static const idPage = '/TrackOrderView';
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: AppColor.kSecondary700,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                color: AppColor.kWhite,
              ),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const TrackOrderMobileLayout(),
        tabletLayout: (context) => const TrackOrderDesktopLayout(),
        desktopLayout: (context) => const TrackOrderDesktopLayout(),
      ),
    );
  }
}
