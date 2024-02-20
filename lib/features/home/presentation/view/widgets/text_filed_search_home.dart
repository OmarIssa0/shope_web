import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/size_config.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        left: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? 12
            : MediaQuery.sizeOf(context).width * .1,
        right: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? 12
            : MediaQuery.sizeOf(context).width * .1,
      ),
      child: Container(color: AppColor.kWhite, child: child),
    );
  }
}
