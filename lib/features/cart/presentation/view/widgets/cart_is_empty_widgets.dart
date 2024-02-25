import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/login/presentation/view/widgets/custom_login_button.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';

class CartIsEmptyWidgets extends StatelessWidget {
  const CartIsEmptyWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LottieBuilder.asset(
          Assets.imagesLottileCartIsEmpty,
          // height: ,
          width: 250,
        ),
        Text(
          'Cart is empty',
          style: AppStyles.styleMedium18(context, color: AppColor.kGray900),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 3.5, vertical: 24),
          child: CustomLoginButtonLogin(
              title: 'Go Sopping',
              function: () {
                Navigator.pushReplacementNamed(context, SearchView.idPage);
              }),
        )
      ],
    );
  }
}
