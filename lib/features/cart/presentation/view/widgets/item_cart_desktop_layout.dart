import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/features/cart/presentation/view_model/model/cart_model.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/details/presentation/view/widgets/box_count.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class ItemCartDesktopLayout extends StatefulWidget {
  const ItemCartDesktopLayout({
    super.key,
  });

  @override
  State<ItemCartDesktopLayout> createState() => _ItemCartDesktopLayoutState();
}

class _ItemCartDesktopLayoutState extends State<ItemCartDesktopLayout> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartModelProvider = Provider.of<CartModel>(context);
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct =
        productProvider.findByProductId(cartModelProvider.productId);

    return getCurrProduct == null
        ? const SizedBox.shrink()
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  cartProvider.removeOneItem(
                      productId: getCurrProduct.productId);
                },
                child: const Icon(
                  Icons.cancel,
                  color: AppColor.kDanger500,
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .26,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, DetailsView.idPage,
                        arguments: getCurrProduct.productId);
                  },
                  child: ListTile(
                    leading: Hero(
                        tag: getCurrProduct.productId,
                        child:
                            Image.network(getCurrProduct.productImage.first)),
                    title: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      getCurrProduct.productTitle,
                      style: AppStyles.styleRegular14(context,
                          color: AppColor.kGray900),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$${getCurrProduct.productPrice}',
                            style: AppStyles.styleRegular14(context,
                                color: AppColor.kGray700)),
                        getCurrProduct.discount == null
                            ? const SizedBox.shrink()
                            : Text(
                                '\$${getCurrProduct.discount}',
                                style: AppStyles.styleRegular14(context,
                                        color: AppColor.kGray400)
                                    .copyWith(
                                        decoration: TextDecoration.lineThrough),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              BoxCount(
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
              ),
              const Spacer(
                flex: 2,
              ),
              Text('\$${getCurrProduct.productPrice}',
                  style: AppStyles.styleRegular14(context,
                      color: AppColor.kGray700)),
            ],
          );
  }
}
