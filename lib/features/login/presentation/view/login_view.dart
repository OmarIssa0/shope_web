import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';

class LoginView extends StatelessWidget {
  static const idPage = '/LoginView';
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AdaptiveLayout(
        desktopLayout: (context) => const LoginViewDesktopLayout(),
        tabletLayout: (context) => const SizedBox(),
        mobileLayout: (context) => const SizedBox(),
      ),
    );
  }
}

class LoginViewDesktopLayout extends StatelessWidget {
  const LoginViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 100),
          TabBarLoginView(),
          SizedBox(height: 100),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}

class TabBarLoginView extends StatefulWidget {
  const TabBarLoginView({
    super.key,
  });

  @override
  State<TabBarLoginView> createState() => _TabBarLoginViewState();
}

class _TabBarLoginViewState extends State<TabBarLoginView> {
  int indexBar = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      elevation: 100,
      child: Container(
        height: 504,
        width: 424,
        decoration: BoxDecoration(
            color: AppColor.kWhite,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColor.kGray200, width: 1)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      indexBar = 0;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: indexBar == 0
                              ? const Border(
                                  bottom: BorderSide(
                                      color: AppColor.kPrimary500, width: 3))
                              : const Border(
                                  bottom: BorderSide(
                                      color: AppColor.kGray100, width: 1))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Sign In',
                          style: AppStyles.styleMedium20(context,
                              color: indexBar == 0
                                  ? AppColor.kGray900
                                  : AppColor.kGray400),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      indexBar = 1;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: indexBar == 1
                              ? const Border(
                                  bottom: BorderSide(
                                      color: AppColor.kPrimary500, width: 3))
                              : const Border(
                                  bottom: BorderSide(
                                      color: AppColor.kGray100, width: 1))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Sign Up',
                          style: AppStyles.styleMedium20(context,
                              color: indexBar == 1
                                  ? AppColor.kGray900
                                  : AppColor.kGray400),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  indexBar == 0 ? const Text('Heelo ') : const Text('Omar '),
                  // indexBar == 2 ? : const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
