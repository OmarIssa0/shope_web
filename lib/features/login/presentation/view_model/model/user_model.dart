import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserModel with ChangeNotifier {
  final String userId, userName, userImage, userEmail;
  final Timestamp timestamp;
  final List userCart, userWishlist;

  final String? userLastName, userPhoneNumber, country, state, city;

  UserModel({
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.userEmail,
    required this.timestamp,
    required this.userCart,
    required this.userWishlist,
    this.userLastName,
    this.userPhoneNumber,
    this.country,
    this.state,
    this.city,
  });
}
