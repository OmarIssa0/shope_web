import 'package:flutter/material.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_button_google_login.dart';
import 'package:shope_web/features/login/presentation/view/widgets/row_divider.dart';
import 'package:shope_web/features/login/presentation/view/widgets/text_filed_sign_up.dart';

class SignUpLoginView extends StatelessWidget {
  const SignUpLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 0, left: 32, right: 32, top: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFiledSignUp(),
            SizedBox(height: 24),
            RowDivider(),
            SizedBox(height: 12),
            CustomButtonGoogleLogin(),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
