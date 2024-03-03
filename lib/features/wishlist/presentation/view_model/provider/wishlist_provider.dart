import 'package:flutter/material.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/model/wishlist_model.dart';
import 'package:uuid/uuid.dart';

class WishlistProvider with ChangeNotifier {
  final Map<String, WishlistModel> _wishlistItem = {};
  Map<String, WishlistModel> get getWishlistItem {
    return _wishlistItem;
  }

  bool isProductInWishlist({required String productId}) {
    return _wishlistItem.containsKey(productId);
  }

  void addOrRemoveProductToWishlist({required String productId}) {
    if (_wishlistItem.containsKey(productId)) {
      _wishlistItem.remove(productId);
    } else {
      _wishlistItem.putIfAbsent(productId,
          () => WishlistModel(id: const Uuid().v4(), productId: productId));
    }
    notifyListeners();
  }

  // void removeOneItem({required String productId}) {
  //   _cartItem.remove(productId);
  //   notifyListeners();
  // }

  void clearAllWishlist() {
    _wishlistItem.clear();
    notifyListeners();
  }
}
