import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';

class SwiperDetailsProductImage extends StatelessWidget {
  const SwiperDetailsProductImage({super.key});

  static const image = [
    Assets.imagesMac1,
    Assets.imagesMac2,
    Assets.imagesMac3png,
    Assets.imagesMac4png,
    Assets.imagesMac5,
    Assets.imagesMac6,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 600,
      // width: MediaQuery.sizeOf(context).height * .9,
      // height: 400,
      // width: 400,
      width: MediaQuery.sizeOf(context).width / 1 / 3,
      height: 450,
      // height: MediaQuery.sizeOf(context).width * .45,
      // width: MediaQuery.sizeOf(context).height * .45,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.kGray100, width: 1),
          borderRadius: BorderRadius.circular(4)),
      child: Swiper(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Image.asset(
            image[index],
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            color: Colors.grey.shade300,
            activeColor: AppColor.kSecondary500,
          ),
        ),
      ),
    );
  }
}
