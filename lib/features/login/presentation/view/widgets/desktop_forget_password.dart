import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/login/presentation/view/widgets/forget_password_view.dart';

class ForgetPasswordDesktopLayout extends StatelessWidget {
  const ForgetPasswordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 24),
          BodyForgetPasswordView(),
          SizedBox(height: 72),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}
