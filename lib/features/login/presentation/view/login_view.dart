import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/login/presentation/view/widgets/login_view_desktop_layout.dart';
import 'package:shope_web/features/login/presentation/view/widgets/row_signin_and_signUp.dart';
import 'package:shope_web/features/login/presentation/view/widgets/tablet_layuot_login_view.dart';

class LoginView extends StatefulWidget {
  static const idPage = '/LoginView';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  List<Color> colorList = [
    AppColor.kPrimary500,
    AppColor.kPrimary200,
    // AppColor.kPrimary100,
    // AppColor.kPrimary50,
    AppColor.kWhite,
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;

  Color bottomColor = AppColor.kPrimary500;

  Color topColor = AppColor.kPrimary50;
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = AppColor.kWhite;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: MediaQuery.sizeOf(context).width < SizeConfig.tablet
      //     ? AppColor.kPrimary500
      //     : Colors.white,
      backgroundColor: Colors.white,
      body: AdaptiveLayout(
        desktopLayout: (context) => const LoginViewDesktopLayout(),
        tabletLayout: (context) => const TabletLayoutLoginView(),
        mobileLayout: (context) => Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              onEnd: () {
                setState(
                  () {
                    index = index + 1;
                    bottomColor = colorList[index % colorList.length];
                    topColor = colorList[(index + 1) % colorList.length];
                  },
                );
              },
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: begin,
                  end: end,
                  colors: [bottomColor, topColor],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-1, -1),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
                child: CircleAvatar(
                  backgroundColor: AppColor.kPrimary500,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: AppColor.kWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 75, left: 12, right: 12),
              child: RowSignInAndSignUp(),
            ),
          ],
        ),
      ),
    );
  }
}
