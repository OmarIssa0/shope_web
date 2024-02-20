import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class ItemProductSearch extends StatelessWidget {
  const ItemProductSearch(
      {super.key, required this.productModel, required this.productId});

  final String productId;

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct = productProvider.findByProductId(productId);

    return getCurrProduct == null
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailsView.idPage,
                    arguments: getCurrProduct.productId);
              },
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 10,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColor.kGray100),
                      color: AppColor.kWhite,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        getCurrProduct.productTitle,
                        // '2020 Apple MacBook Pro with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD Storage) - Space Gray',
                        style: AppStyles.styleMedium16(context,
                            color: AppColor.kGray900),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        // 'Electronics Devices',
                        getCurrProduct.productCategory,
                        style: AppStyles.styleRegular12(context,
                            color: AppColor.kSecondary500),
                      ),
                      // const SizedBox(height: 8),
                      Divider(color: Colors.grey.shade100),
                      Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        getCurrProduct.productDescription,
                        // 'The most powerful MacBook Pro ever is here. With the blazing-fast M1 Pro or M1 Max chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR display, the best camera and audio ever in a Mac notebook, and all the ports you need. The first notebook of its kind, this MacBook Pro is a beast. M1 Pro takes the exceptional performance of the M1 architecture to a whole new level for pro users.',
                        style: AppStyles.styleRegular12(context,
                            color: AppColor.kGray600),
                      ),
                      const SizedBox(height: 15),
                      Image.network(
                        getCurrProduct.productImage.first,
                        // Assets.imagesIphone,
                        // fit: BoxFit.fill,
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * .2,
                      ),
                      Divider(color: Colors.grey.shade100),
                      Row(
                        children: [
                          Text(
                            getCurrProduct.productPrice,
                            // r'$1699',
                            style: AppStyles.styleSemiBold18(context,
                                color: AppColor.kSecondary500),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            getCurrProduct.discount ?? '',
                            style: AppStyles.styleRegular14(context,
                                    color: AppColor.kGray500)
                                .copyWith(
                                    decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: 13),
                          getCurrProduct.off == null
                              ? const SizedBox.shrink()
                              : Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: AppColor.kWarning400,
                                  ),
                                  child: Text(
                                    getCurrProduct.off ?? '',
                                    style: AppStyles.styleSemiBold12(context,
                                        color: AppColor.kGray900),
                                  ),
                                ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade100),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Icon(IconlyLight.buy,
                                      color: AppColor.kGray600),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Add to card',
                                    style: AppStyles.styleMedium18(context,
                                        color: AppColor.kGray600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.kGray600, width: .1)),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Icon(IconlyLight.heart,
                                      color: AppColor.kGray600),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Add to wishlist',
                                    style: AppStyles.styleMedium18(context,
                                        color: AppColor.kGray600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
