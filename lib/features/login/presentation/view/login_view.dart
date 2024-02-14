import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:shope_web/features/login/presentation/view/widgets/login_view_desktop_layout.dart';
import 'package:shope_web/features/login/presentation/view/widgets/mobile_layout_login_view.dart';
import 'package:shope_web/features/login/presentation/view/widgets/tablet_layuot_login_view.dart';

class LoginView extends StatelessWidget {
  static const idPage = '/LoginView';
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AdaptiveLayout(
        desktopLayout: (context) => const LoginViewDesktopLayout(),
        tabletLayout: (context) => const TabletLayoutLoginView(),
        mobileLayout: (context) => const MobileLayoutViewLogin(),
      ),
    );
  }
}
