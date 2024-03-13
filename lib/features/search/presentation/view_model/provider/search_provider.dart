import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:uuid/uuid.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductModel> _products = [];
  List<ProductModel> get getProduct {
    return _products;
  }

  ProductModel? findByProductId(String productId) {
    if (_products.where((element) => element.productId == productId).isEmpty) {
      return null;
    }
    return _products.firstWhere((element) => element.productId == productId);
  }

  List<ProductModel> findByCategory({required String catName}) {
    List<ProductModel> cateList = _products
        .where((element) => element.productCategory
            .toLowerCase()
            .contains(catName.toLowerCase()))
        .toList();
    return cateList;
  }

  List<ProductModel> searchQuery(
      {required String searchText, required List<ProductModel> passedList}) {
    List<ProductModel> searchList = passedList
        .where((element) => element.productTitle
            .toLowerCase()
            .contains(searchText.toLowerCase()))
        .toList();

    return searchList;
  }

  final productDB = FirebaseFirestore.instance.collection("product");
  Future<List<ProductModel>> fetchProduct() async {
    try {
      await productDB
          // .orderBy("createAt", descending: false)
          .get()
          .then((productsSnapshot) {
        _products.clear();
        for (var element in productsSnapshot.docs) {
          _products.insert(0, ProductModel.fromFirestore(element));
        }
      });
      notifyListeners();
      return _products;
    } on FirebaseException {
      rethrow;
    }
  }

  Stream<List<ProductModel>> fetchProductStream() {
    try {
      return productDB.snapshots().map((snapshot) {
        _products.clear();
        for (var element in snapshot.docs) {
          _products.insert(0, ProductModel.fromFirestore(element));
        }
        return _products;
      });
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
