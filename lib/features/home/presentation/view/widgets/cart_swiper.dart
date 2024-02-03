import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';

class CartSwiper extends StatelessWidget {
  const CartSwiper({super.key});

  static List<String> bannerImage = [
    Assets.imagesBannerButtonOne,
    Assets.imagesBannerButtonToo,
    // Assets.imagesWidgetPNG1,
    Assets.imagesWidget2PNG2,
    Assets.imagesWidget3PNG3,
  ];

  @override
  Widget build(BuildContext context) {
    return CustomExpandedWidgets(
      child: AspectRatio(
        aspectRatio: 424 / 248,
        // height: MediaQuery.sizeOf(context).height * 0.25,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Swiper(
            itemCount: bannerImage.length,
            itemBuilder: (context, index) {
              return Image.asset(
                bannerImage[index],
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
        ),
      ),
    );
  }
}
