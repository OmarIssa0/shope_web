import 'package:flutter/material.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_button_google_login.dart';
import 'package:shope_web/features/login/presentation/view/widgets/row_divider.dart';
import 'package:shope_web/features/login/presentation/view/widgets/text_filed_sign_in.dart';

class SignInTabBarLoginView extends StatelessWidget {
  const SignInTabBarLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 32, left: 32, right: 32, top: 24),
        child: Column(
          children: [
            TextFiledSignIn(),
            SizedBox(height: 24),
            RowDivider(),
            SizedBox(height: 12),
            CustomButtonGoogleLogin(),
          ],
        ),
      ),
    );
  }
}
