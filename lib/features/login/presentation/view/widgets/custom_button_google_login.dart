import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/constant/my_function.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';

class CustomButtonGoogleLogin extends StatelessWidget {
  const CustomButtonGoogleLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColor.kWhite,
            shadowColor: AppColor.kWhite,
            foregroundColor: AppColor.kWhite,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: AppColor.kGray100),
                borderRadius: BorderRadius.circular(2))),
        onPressed: () {
          MyFunction.googleButton(context: context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.imagesGoogle,
                height: 24,
              ),
              const Expanded(child: SizedBox()),
              Text(
                'Login with Google',
                style:
                    AppStyles.styleRegular14(context, color: AppColor.kGray700),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ));
  }
}
