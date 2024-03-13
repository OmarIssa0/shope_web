import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:shope_web/features/login/presentation/view_model/model/user_model.dart';

class UserProvider with ChangeNotifier {
  UserModel? userModel;
  UserModel? get getUserModel {
    return userModel;
  }

  Future<UserModel?> fetchUserInfo() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;
    if (user == null) {
      return null;
    }
    var uid = user.uid;
    try {
      final userDoc =
          await FirebaseFirestore.instance.collection('user').doc(uid).get();
      final userDocDict = userDoc.data();
      userModel = UserModel(
        userLastName: userDoc.get('userLastName'),
        userPhoneNumber: userDoc.get('userPhoneNumber'),
        country: userDoc.get('country'),
        state: userDoc.get('state'),
        city: userDoc.get('city'),
        userId: userDoc.get('userId'),
        userName: userDoc.get('userName'),
        userImage: userDoc.get('userImage'),
        userEmail: userDoc.get('userEmail'),
        timestamp: userDoc.get('createAd'),
        userCart:
            userDocDict!.containsKey('userCart') ? userDoc.get('userCart') : [],
        userWishlist: userDocDict.containsKey('userWishlist')
            ? userDoc.get('userWishlist')
            : [],
      );
      return userModel;
    } on FirebaseException catch (e) {
      throw e.message.toString();
    } catch (e) {
      rethrow;
    }
  }
}
