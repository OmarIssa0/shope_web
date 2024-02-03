import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/home/presentation/view_model/list_tile_drawer_model.dart';

class ListViewListTile extends StatelessWidget {
  const ListViewListTile({super.key});

  static const items = [
    ListTileDrawerModel(image: Assets.imagesHeart, title: 'Wishlist'),
    ListTileDrawerModel(image: Assets.imagesShoppingCartSimple, title: 'Cart'),
    ListTileDrawerModel(image: Assets.imagesInfo, title: 'Need Help'),
    ListTileDrawerModel(image: Assets.imagesPhoneCall, title: 'Follow us'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          items.length,
          (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: CustomListTile(listTileDrawerModel: items[index]),
              )).toList(),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.listTileDrawerModel});
  final ListTileDrawerModel listTileDrawerModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        listTileDrawerModel.image,
        colorFilter: const ColorFilter.mode(AppColor.kWhite, BlendMode.srcIn),
      ),
      title: Text(
        listTileDrawerModel.title,
        style: AppStyles.styleMedium14(context, color: AppColor.kWhite),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded,
          size: 15, color: AppColor.kWhite),
    );
  }
}
