import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/widgets/amount_and_discount.dart';
import 'package:shope_web/features/details/presentation/view/widgets/row_box_count_and_button_and_card.dart';
import 'package:shope_web/features/details/presentation/view/widgets/swiper_details_product_image.dart';
import 'package:shope_web/features/details/presentation/view/widgets/title_and_description.dart';
import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/footer_widgets.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/info_dev_footer.dart';

class TabletLayoutDetailsView extends StatelessWidget {
  const TabletLayoutDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HederSection(),
          SizedBox(height: 24),
          BodyDetailsProductTablet(),
          SizedBox(height: 72),
          FooterWidgets(),
          InfoDevFooter(),
        ],
      ),
    );
  }
}

class BodyDetailsProductTablet extends StatelessWidget {
  const BodyDetailsProductTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomExpandedWidgets(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 25),
              SwiperDetailsProductImage(),
              SizedBox(height: 35),
              AmountAndDiscount(),
              SizedBox(height: 12),
              RowBoxCountAndButtonAddCart(),
            ],
          ),
          SizedBox(width: 25),
          TitleAndDescription(),
          SizedBox(height: 35),
        ],
      ),
    );
  }
}
