import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/widgets/mobile_footer_layout.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';
import 'package:shope_web/features/login/presentation/view/widgets/row_signin_and_signUp.dart';

class MobileLayoutViewLogin extends StatelessWidget {
  const MobileLayoutViewLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 100),
          RowSignInAndSignUp(),
          SizedBox(height: 100),
          MobileFooterLayout(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}
