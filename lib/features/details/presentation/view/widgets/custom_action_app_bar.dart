import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/login/presentation/view/login_view.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';

class CustomActionAppBar extends StatelessWidget {
  const CustomActionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Badge(
          label: const Text(
            '2',
            style: TextStyle(color: AppColor.kSecondary700),
          ),
          backgroundColor: Colors.white,
          alignment: const Alignment(.4, -.3),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.buy,
              color: AppColor.kWhite,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LoginView.idPage);
          },
          icon: const Icon(
            IconlyLight.profile,
            color: AppColor.kWhite,
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SearchView.idPage);
            },
            icon: const Icon(
              IconlyLight.search,
              color: AppColor.kWhite,
            )),
      ],
    );
  }
}
