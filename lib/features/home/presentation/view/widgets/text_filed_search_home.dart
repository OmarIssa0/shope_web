import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/core/utils/size_config.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

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
      child: Container(
        color: AppColor.kWhite,
        child: TextField(
          scrollPadding: const EdgeInsets.all(0),
          cursorColor: AppColor.kSecondary700,
          decoration: InputDecoration(
            hintText: 'Search for anything...',
            hintStyle:
                AppStyles.styleRegular16(context, color: AppColor.kGray500),
            contentPadding: const EdgeInsets.all(0),
            prefixIcon: const Icon(
              IconlyLight.search,
              color: AppColor.kGray600,
            ),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(
      color: AppColor.kGray300,
    ),
  );
}
