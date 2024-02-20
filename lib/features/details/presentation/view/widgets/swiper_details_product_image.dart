import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class SwiperDetailsProductImage extends StatelessWidget {
  const SwiperDetailsProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final getCurrProduct = productProvider.findByProductId(productId);

    return Container(
      width: MediaQuery.sizeOf(context).width / 3,
      height: MediaQuery.sizeOf(context).width / 3,
      // height: 500,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.kGray100, width: 1),
          borderRadius: BorderRadius.circular(4)),
      child: Swiper(
        itemCount: getCurrProduct!.productImage.length,
        itemBuilder: (context, index) {
          return Image.network(
            getCurrProduct.productImage[index],
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
