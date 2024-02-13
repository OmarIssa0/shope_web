import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/item_product.dart';
import 'package:shope_web/features/home/presentation/view_model/item_product_model.dart';

class ListViewItemProduct extends StatelessWidget {
  const ListViewItemProduct({super.key});

  static const item = [
    ItemProductModel(
      isHot: true,
      isDiscount: false,
      ofDiscount: '',
      isSold: false,
      isActive: false,
      title: 'Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear..',
      amount: r'$2,300',
      discount: '',
      image: Assets.imagesDrone,
    ),
    ItemProductModel(
      isHot: false,
      ofDiscount: '',
      isSold: true,
      isDiscount: false,
      isActive: false,
      title: 'Simple Mobile 4G LTE Prepaid Smartphone',
      amount: r'$220',
      discount: '',
      image: Assets.imagesIphone,
    ),
    ItemProductModel(
      isHot: false,
      ofDiscount: '19% OFF',
      isDiscount: true,
      isSold: false,
      isActive: true,
      title: '4K UHD LED Smart TV with Chromecast Built-in',
      amount: r'$150',
      discount: r'$865',
      image: Assets.imagesIphone,
    ),
    ItemProductModel(
      isHot: false,
      ofDiscount: '19% OFF',
      isDiscount: true,
      isSold: false,
      isActive: false,
      title: 'Sony DSCHX8 High Zoom Point & Shoot Camera',
      amount: r'$1,200',
      discount: '',
      image: Assets.imagesDrone,
    ),
    // ItemProductModel(
    //   isHot: false,
    //   ofDiscount: '',
    //   isSold: true,
    //   isDiscount: false,
    //   isActive: false,
    //   title: 'Simple Mobile 4G LTE Prepaid Smartphone',
    //   amount: r'$220',
    //   discount: '',
    //   image: Assets.imagesPhone,
    // ),
    // ItemProductModel(
    //   isHot: false,
    //   ofDiscount: '19% OFF',
    //   isDiscount: true,
    //   isSold: false,
    //   isActive: true,
    //   title: '4K UHD LED Smart TV with Chromecast Built-in',
    //   amount: r'$150',
    //   discount: r'$865',
    //   image: Assets.imagesIphone,
    // ),
    // ItemProductModel(
    //   isHot: false,
    //   ofDiscount: '19% OFF',
    //   isDiscount: true,
    //   isSold: false,
    //   isActive: false,
    //   title: 'Sony DSCHX8 High Zoom Point & Shoot Camera',
    //   amount: r'$1,200',
    //   discount: '',
    //   image: Assets.imagesDrone,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 656,
    //   width: double.infinity,
    //   child: CustomGridView(
    //       mainAxisSpacing: 16,
    //       crossAxisSpacing: 16,
    //       childAspectRatio: 320 / 234,
    //       children: item.map((e) => ItemProduct(itemProductModel: e)).toList()),
    // );

    return Row(
      children: item
          .map((e) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ItemProduct(itemProductModel: e),
              ))
          .toList(),
    );
  }
}
