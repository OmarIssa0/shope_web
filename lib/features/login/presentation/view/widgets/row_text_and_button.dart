import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class RowTextAndButton extends StatelessWidget {
  const RowTextAndButton(
      {super.key,
      required this.title,
      required this.titleButton,
      required this.function});

  final String title, titleButton;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleRegular14(context, color: AppColor.kGray600),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: () {
            function();
          },
          child: Text(
            titleButton,
            style:
                AppStyles.styleMedium14(context, color: AppColor.kSecondary500),
          ),
        ),
      ],
    );
  }
}
