import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 20, horizontal: MediaQuery.sizeOf(context).width * .1),
        child: Container(
          color: AppColor.kWhite,
          child: TextField(
            cursorColor: AppColor.kSecondary700,
            decoration: InputDecoration(
              hintText: 'Search for anything...',
              hintStyle:
                  AppStyles.styleRegular16(context, color: AppColor.kGray500),
              suffixIcon: const Icon(IconlyLight.search),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(2),
    borderSide: const BorderSide(
      color: AppColor.kWhite,
    ),
  );
}
