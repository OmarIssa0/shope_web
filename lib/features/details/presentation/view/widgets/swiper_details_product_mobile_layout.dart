import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';

class SwiperDetailsProductImageMobileLayout extends StatelessWidget {
  const SwiperDetailsProductImageMobileLayout({super.key});

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
      width: MediaQuery.sizeOf(context).width / 1,
      // width: double.infinity,
      height: MediaQuery.sizeOf(context).width / 1.5,

      // height: 500,
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
        autoplay: false,
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
