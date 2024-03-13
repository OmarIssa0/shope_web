import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/details/presentation/view/widgets/custom_action_app_bar.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_logo.dart';
import 'package:shope_web/features/home/presentation/view/widgets/desktop_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/mobile_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/tablet_layout_home_view.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String idPage = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLoading = true;
  Future<void> fetchFCT() async {
    final productsProvider =
        Provider.of<ProductProvider>(context, listen: false);
    try {
      Future.wait({
        productsProvider.fetchProduct(),
      });
    } catch (e) {
      log(e.toString());
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void didChangeDependencies() {
    if (isLoading) {
      fetchFCT();
    }
    
    super.didChangeDependencies();
  }

  @override
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
        desktopLayout: (context) => const DesktopLayoutHomeView(),
        tabletLayout: (context) => const TabletLayoutHomeView(),
        mobileLayout: (context) => const MobileLayoutHomeView(),
      ),
    );
  }
}
