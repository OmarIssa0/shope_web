import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  final String productId,
      productTitle,
      productPrice,
      productCategory,
      productDescription,
      // productQuantity,
      brand;

  // final String brand;
  List<dynamic> productImage;
  String? off, discount;

  bool? inStock;
  Timestamp? createdAt;
  ProductModel({
    required this.productId,
    required this.productTitle,
    required this.productPrice,
    required this.productCategory,
    required this.productDescription,
    required this.productImage,
    // required this.productQuantity,
    required this.brand,
    // this.createdAt,
    this.off,
    this.discount,
    this.inStock,
    this.createdAt,
  });

  factory ProductModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return ProductModel(
      productId: data['productId'],
      productTitle: data['productTitle'],
      productPrice: data['productPrice'],
      productCategory: data['productCategory'],
      productDescription: data['productDescription'],
      productImage: data['productImage'],
      // productImage: doc.get("productImage"),
      // productQuantity: data['productQuantity'],
      brand: data['brand'],
      createdAt: data['createdAt'],
      discount: data['discount'],
      inStock: data['inStock'],
      off: data['off'],
    );
  }
}
