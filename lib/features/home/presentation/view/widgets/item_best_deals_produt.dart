import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/best_item_product.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_product.dart';
import 'package:shope_web/features/home/presentation/view_model/item_product_model.dart';

class ItemBestDealsProduct extends StatelessWidget {
  const ItemBestDealsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomExpandedWidgets(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BestItemProduct(),
            Column(
              children: [
                ListViewItemProduct(),
                ListViewItemProduct(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewItemProduct extends StatelessWidget {
  const ListViewItemProduct({super.key});

  static const item = [
    ItemProductModel(
      isActive: false,
      title: 'Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear..',
      amount: r'$2,300',
      discount: '',
      image: Assets.imagesDrone,
    ),
    ItemProductModel(
      isActive: false,
      title: 'Simple Mobile 4G LTE Prepaid Smartphone',
      amount: r'$220',
      discount: '',
      image: Assets.imagesPhone,
    ),
    ItemProductModel(
      isActive: true,
      title: '4K UHD LED Smart TV with Chromecast Built-in',
      amount: r'$150',
      discount: r'$865',
      image: Assets.imagesIphone,
    ),
    ItemProductModel(
      isActive: false,
      title: 'Sony DSCHX8 High Zoom Point & Shoot Camera',
      amount: r'$1,200',
      discount: '',
      image: Assets.imagesDrone,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: item.map((e) => ItemProduct(itemProductModel: e)).toList(),
      ),
    );
  }
}
