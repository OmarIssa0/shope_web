import 'package:flutter/material.dart';
import 'package:shope_web/features/cart/presentation/view_model/model/cart_model.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';
import 'package:uuid/uuid.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartModel> _cartItem = {};
  Map<String, CartModel> get getCartItem {
    return _cartItem;
  }

  bool isProductInCart({required String productId}) {
    return _cartItem.containsKey(productId);
  }

  void addProductToCart({required String productId}) {
    _cartItem.putIfAbsent(
        productId,
        () => CartModel(
            cartId: const Uuid().v4(), productId: productId, quantity: 1));
    notifyListeners();
  }

  void updateQuantity({required String productId, required int quantity}) {
    _cartItem.update(
        productId,
        (item) => CartModel(
            cartId: item.productId, productId: productId, quantity: quantity));
    notifyListeners();
  }

  double getTotal(
      {required ProductProvider productProvider,
      required double shipping,
      required double discount,
      required double tac}) {
    double total = 0.0;

    _cartItem.forEach((key, value) {
      final ProductModel? getproductProvider =
          productProvider.findByProductId(value.productId);
      if (getproductProvider == null) {
        // total += 0;
      } else {
        total += double.parse(getproductProvider.productPrice) *
                value.quantity *
                discount +
            shipping +
            tac;
      }
    });
    return total;
  }

  void removeOneItem({required String productId}) {
    _cartItem.remove(productId);
    notifyListeners();
  }

  void clearAll() {
    _cartItem.clear();
    notifyListeners();
  }
}
