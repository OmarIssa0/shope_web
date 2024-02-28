import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view_model/model/cart_model.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/details/presentation/view/widgets/box_count.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class CustomItemCartViewMobileLayout extends StatefulWidget {
  const CustomItemCartViewMobileLayout({super.key});

  @override
  State<CustomItemCartViewMobileLayout> createState() =>
      _CustomItemCartViewMobileLayoutState();
}

class _CustomItemCartViewMobileLayoutState
    extends State<CustomItemCartViewMobileLayout> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    final cartModelProvider = Provider.of<CartModel>(context);
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct =
        productProvider.findByProductId(cartModelProvider.productId);

    final cartProvider = Provider.of<CartProvider>(context);

    // Size size = MediaQuery.of(context).size;
    return getCurrProduct == null
        ? const SizedBox.shrink()
        : Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, DetailsView.idPage,
                      arguments: getCurrProduct.productId);
                },
                child: ListTile(
                  leading: Hero(
                    tag: getCurrProduct.productId,
                    child: Image.network(
                      getCurrProduct.productImage.first,
                      // "https://i.ibb.co/BtMBSgK/1-iphone14-128gb-black.webp",
                      // height: size.height * .18,
                      // width: size.width * 1,
                    ),
                  ),
                  title: Text(
                    getCurrProduct.productTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.styleSemiBold18(context,
                        color: AppColor.kGray900),
                  ),
                  subtitle: Text(
                    getCurrProduct.productDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.styleRegular14(context,
                        color: AppColor.kGray800),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      cartProvider.removeOneItem(
                          productId: getCurrProduct.productId);
                    },
                    child: const Icon(
                      Icons.cancel,
                      color: AppColor.kDanger500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(flex: 1),
                    Text(
                      getCurrProduct.productPrice,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.styleSemiBold16(context,
                          color: AppColor.kGray800),
                    ),
                    const Spacer(flex: 2),
                    BoxCount(
                      padding: 5,
                      wight: 10,
                      onTap: () {
                        if (count == 1) {
                          return;
                        }
                        cartProvider.updateQuantity(
                            productId: cartModelProvider.productId,
                            quantity: count - 1);
                        if (count == 1) {
                          cartProvider.removeOneItem(
                              productId: getCurrProduct.productId);
                        }
                        count--;
                        // setState(() {});
                      },
                      onTapToo: () {
                        cartProvider.updateQuantity(
                            productId: cartModelProvider.productId,
                            quantity: count + 1);
                        count++;
                        // setState(() {});
                      },
                      data: int.parse('$count').toString(),
                      // onTap: () {
                      //   cartProvider.updateQuantity(
                      //       productId: cartModelProvider.productId,
                      //       quantity: count);
                      //   if (count == 1) {
                      //     return;
                      //   }
                      //   count--;
                      //   // cartProvider.updateQuantity(
                      //   //     productId: cartModelProvider.productId,
                      //   //     quantity: count);
                      //   // if (count == 0) {
                      //   //   cartProvider.removeOneItem(
                      //   //       productId: getCurrProduct.productId);
                      //   // }
                      //   // setState(() {
                      //   //   count--;
                      //   // });
                      // },
                      // onTapToo: () {
                      //   cartProvider.updateQuantity(
                      //       productId: cartModelProvider.productId,
                      //       quantity: count + 1);
                      //   setState(() {
                      //     count++;
                      //   });
                      // },
                      // data: count.toString(),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 32,
                endIndent: 12,
                indent: 12,
                color: AppColor.kGray100,
              )
            ],
          );
  }
}
