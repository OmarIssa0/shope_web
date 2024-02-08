import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/details/presentation/view/widgets/custom_action_app_bar.dart';
import 'package:shope_web/features/details/presentation/view/widgets/desktop_layout_details_view.dart';
import 'package:shope_web/features/details/presentation/view/widgets/mobile_layout_details_view.dart';
import 'package:shope_web/features/details/presentation/view/widgets/tablet_layout_details_view.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_logo.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});
  static const idPage = '/details view';

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              centerTitle: true,
              title: const CustomLogo(
                  image: Assets.imagesLogoPNG,
                  height: 30,
                  mainAxisAlignment: MainAxisAlignment.start),
              actions: const [
                CustomActionAppBar(),
              ],
              backgroundColor: AppColor.kSecondary700,
              automaticallyImplyLeading: false,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: AppColor.kWhite)),
            )
          : null,
      backgroundColor: AppColor.kWhite,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayoutDetailsView(),
        tabletLayout: (context) => const TabletLayoutDetailsView(),
        desktopLayout: (context) => const DesktopLayoutDetailsView(),
      ),
    );
  }
}
