import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/login/presentation/view/widgets/signIn_tab_bar.dart';
import 'package:shope_web/features/login/presentation/view/widgets/signup_login_view.dart';

class RowSignInAndSignUp extends StatefulWidget {
  const RowSignInAndSignUp({super.key});

  @override
  State<RowSignInAndSignUp> createState() => _RowSignInAndSignUpState();
}

class _RowSignInAndSignUpState extends State<RowSignInAndSignUp> {
  late PageController controller;
  int indexBar = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: indexBar);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      elevation: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 900),
        height: indexBar == 0 ? 555 : 800,
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
                      setState(() {
                        indexBar = 0;
                      });
                      controller.jumpToPage(1);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
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
                        padding: EdgeInsets.symmetric(
                            vertical: indexBar == 0 ? 14 : 16),
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
                      // indexBar = 1;
                      // setState(() {});
                      setState(() {
                        indexBar = 1;
                      });
                      controller.jumpToPage(2);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
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
                        padding: EdgeInsets.symmetric(
                            vertical: indexBar == 1 ? 14 : 16),
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
                controller: controller,
                // physics: const PageScrollPhysics(),
                children: [
                  indexBar == 0
                      ? const SignInTabBarLoginView()
                      : const SignUpLoginView()
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
