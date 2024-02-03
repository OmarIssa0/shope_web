import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_logo.dart';
import 'package:shope_web/features/home/presentation/view/widgets/desktop_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/mobile_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/tablet_layout_home_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
              actions: [
                Badge(
                  label: const Text(
                    '2',
                    style: TextStyle(color: AppColor.kSecondary700),
                  ),
                  backgroundColor: Colors.white,
                  alignment: const Alignment(.4, -.3),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconlyLight.buy,
                        color: AppColor.kWhite,
                      )),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyLight.search,
                      color: AppColor.kWhite,
                    )),
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
        desktopLayout: (context) => const DesktopLayoutHomeView(),
        tabletLayout: (context) => const TabletLayoutHomeView(),
        mobileLayout: (context) => const MobileLayoutHomeView(),
      ),
    );
  }
}
