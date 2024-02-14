import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/login/presentation/view/widgets/row_signin_and_signUp.dart';

class TabletLayoutLoginView extends StatelessWidget {
  const TabletLayoutLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HederSection(),
          SizedBox(height: 100),
          RowSignInAndSignUp(),
          SizedBox(height: 100),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}
