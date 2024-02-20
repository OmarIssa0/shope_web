import 'package:flutter/material.dart';
import 'package:shope_web/features/login/presentation/view/widgets/row_signin_and_signUp.dart';

class MobileLayoutViewLogin extends StatelessWidget {
  const MobileLayoutViewLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(child: RowSignInAndSignUp()),
            SizedBox(height: 50),
            // MobileFooterLayout(),
            // InfoDevFooter(),
          ],
        ),
      ),
    );
  }
}
